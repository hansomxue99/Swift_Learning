// 常量与变量
let myConst = 42
var myVariable = 42

// 显式声明常量（变量）类型
let myFloat: Float = 4

// 值不会隐式转换
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
/* Binary operator '+' cannot be applied to operands of type 'String' and 'Int'
let widthLabel = label + width
*/ 
print(widthLabel)


// 值如何显式转换为字符串，除了上述的强制转换
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
print(fruitSummary)

// 练习：将浮点计算转换为字符串
let a: Double = 1
let b: Double = 2
let ming = "XiaoMing"
let aPlusb = "say hi to \(ming) with \(a + b)."
print(aPlusb)

// 如何包含多行字符串
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
print(quotation)

// 数组list
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
shoppingList.append("blue paint")
print(shoppingList)

// 字典dict
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]

occupations["Jayne"] = "Public Relations"
print(occupations)

// 创建空list或者dict
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]
