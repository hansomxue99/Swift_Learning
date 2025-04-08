// 创建枚举类型, 可以包含方法
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    static let allCases: [Rank] = [
        .ace, .two, .three, .four, .five, 
        .six, .seven, .eight, .nine, .ten, 
        .jack, .queen, .king
    ]
}

let ace = Rank.ace
print(ace)
print(ace.rawValue)
print(ace.simpleDescription())

/*
	• Swift 默认会尝试将 ace 转换为字符串进行打印。
	• Rank 继承自 Int，但 Swift 不会 直接打印 rawValue，而是打印 case 的名字。
	• Swift 自动为枚举提供了 CustomStringConvertible 实现，使 print(ace) 等价于：
*/
let two = Rank.two
print(two)

// 练习: 自定义比较函数
func enumCompare(_ a: Rank, _ b: Rank) -> Bool {
    return a.rawValue < b.rawValue
}

print(enumCompare(Rank.ace, Rank.queen))

// 判断是否存在该枚举类型
if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
    print(threeDescription)
} else {
    print("nil")
}

enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }

    func color() -> String {
        switch self {
        // case .spades:
        //     return "black"
        // case .clubs:
        //     return "black"
        // case .hearts:
        //     return "red"
        // case .diamonds:
        //     return "red"
        
        case .spades, .clubs:
            return "black"
        case .hearts, .diamonds:
            return "red"
        }
    }

    static let allCases: [Suit] = [
        .spades, .hearts, .diamonds, .clubs
    ]
}

let hearts = Suit.hearts
print(hearts.simpleDescription())
print(hearts.color())

enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09pm")
let failure = ServerResponse.failure("Out of chesse.")

switch success {
case let .result(sunrise, sunset):      //  了解，这个let叫做swift中的模板匹配绑定
    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
case let .failure(message):
    print("Failure... \(message)")
}

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }

    static func fullDeck() -> [Card] {
        var deck: [Card] = []
        for suit in Suit.allCases {
            for rank in Rank.allCases {
                deck.append(Card(rank: rank, suit: suit))
            }
        }
        return deck
    }
}
let threeofSpades = Card(rank: .three, suit: .spades)
print(threeofSpades.simpleDescription())

print(Card.fullDeck())