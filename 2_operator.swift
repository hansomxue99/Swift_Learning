let a = 5 / 2.0
print(a)

let s = "Hello" + ", World!"
print(s)

let b = 10 % 4
let c = -10 % 4
let d = 10 % -4
print(b)
print(c)
print(d)

let defaultColorName = "red"
var userDefinedColorName: String? = "green"
var colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)

for i in 1...5 {
  print("\(i) * 5 = \(i * 5)")
}

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count

for i in 0..<count {
  print("第 \(i + 1) 个人叫 \(names[i])")
}

for name in names[2...] {
  print(name)
}

for name in names[...2] {
  print(name)
}

for name in names[..<2] {
    print(name)
}