let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

print(quotation)

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imageination is more important than knowledge" - Enistein
let dollarSign = "\u{24}"             // $，Unicode 标量 U+0024
let blackHeart = "\u{2665}"           // ♥，Unicode 标量 U+2665
let sparklingHeart = "\u{1F496}"      // 💖，Unicode 标量 U+1F496

print(wiseWords)
print(dollarSign)
print(blackHeart)
print(sparklingHeart)

let expandString = #"Line1 \nLine2"#
print(expandString)

let expandString2 = #"Line1 \#nLine2"#
print(expandString2)

var emptyString = ""
var emptyString2 = String()
if emptyString.isEmpty {
    print("Nothing is here.")
}

for character in "Dog!🐶" {
    print(character)
}

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// 打印输出：“Cat!🐱”

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2		// 方法1
// welcome 现在等于 "hello there"

var instruction = "look over"
instruction += string2						// 方法2
// instruction 现在等于 "look over there"

let exclamationMark: Character = "!"
welcome.append(exclamationMark)		// 方法3
// welcome 现在等于 "hello there!"

print(welcome)

welcome.append(instruction)
print(welcome)

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(message)

let zhong = "\u{4E2D}"
print(zhong)

let eAcute: Character = "\u{E9}"                         // é
let combinedEAcute: Character = "\u{65}\u{301}"          // e 后面加上  ́
// eAcute 是 é, combinedEAcute 是 é

print(eAcute)
print(combinedEAcute)

var word = "cafe"
print("the number of characters in \(word) is \(word.count)")
// 打印输出“the number of characters in cafe is 4”

word += "\u{301}"    // 拼接一个重音，U+0301

print("the number of characters in \(word) is \(word.count)")
// 打印输出“the number of characters in café is 4”