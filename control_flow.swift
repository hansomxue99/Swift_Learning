// if控制语句、for语句
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(individualScores)

// if和let处理值缺失的情况，在类型后加上？表示变量的值是可选的，nil表示值缺失
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)

// 如果变量为可选值，那么条件判断相当于False
optionalName = nil
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, nil"
}
print(greeting)

// ?? 操作符类似于C++中的符号选择语句，如果前面为nil，那么选择后者
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
print(informalGreeting)

// switch语句，swicth必须要有default语句，不需要break，一旦符合条件会自动退出
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)")
default:
    print("Everything tastes good in soup.")
}

// for-in
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Sqare": [1, 4, 9, 16, 25],
]
var largest = 0
var largest_type: String = "null"
for (type, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largest_type = type
        }
    }
}
let largest_state = "The largest number is \(largest), which is in \(largest_type)."
print(largest_state)

// while 
var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

// ..< 符号表达式
var total = 0
for i in 0..<4 {
    total += i
}
print(total)