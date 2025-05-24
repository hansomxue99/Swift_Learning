let minValue = Int.min
let maxValue = Int.max

print(minValue)
print(maxValue)

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode).")

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)		// Int()构造器返回值为Int?，可选类型。

if let actualNumber = Int(possibleNumber) {
  print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
  print("\'\(possibleNumber)\' could not be converted to an integer")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
  print("\(firstNumber) < \(secondNumber) < 100")
}

let age = -3
assert(age >= 0, "A person's age cannot be less than zero")