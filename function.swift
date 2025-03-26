// func声明函数
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")

// 练习
func greet2(person: String, greetText: String) -> String {
    return "Hello \(person), today's special-price dish is \(greetText)."
}

// 自定义函数参数标签
func greet3(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet3("John", on: "Wednesday")

// 使用元组来返回多个值
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

// 函数嵌套
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(returnFifteen())

// 函数作为第一等类型，可以作为另一个函数的返回值, function factory? function pointer? 仿函数？
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7))

// 函数作为函数参数，函数指针
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))

// 闭包，类似C++中的lambda表达式
let newNumbers = numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})
let newNumbers2 = numbers.map {$0 * 3}
// let newNumbers2 = numbers.map({number in number * 3})
print(newNumbers2)

// 练习
let newNumbers3 = numbers.map({
    (number: Int) -> Int in
    var result = number
    if number % 2 != 0 {
        result = 0
    }
    return result
})
print(newNumbers3)

// 闭包排序
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers) 