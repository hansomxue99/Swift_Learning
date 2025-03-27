// class 类似于 C++中的class
class Shape {
    var numbersOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numbersOfSides) sides."
    }
}

// 练习: 使用let添加常量属性
// class Circle {
//     let radius: Double = 10
//     func getRadius() -> Double {
//         return radius
//     }
// }

// 创建实例
var shape = Shape()
shape.numbersOfSides = 7
var shapeDescription = shape.simpleDescription()
print(shapeDescription)

// 构造函数, 使用init创建构造器, 使用deinit创建析构函数
class NamedShape {
    var numbersOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numbersOfSides) sides."
    }
}

// 子类, 委托构造, override显式重写声明
class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        self.numbersOfSides = 4
    }

    func area() -> Double {
        return self.sideLength * self.sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
print(test.area())
print(test.simpleDescription())

// 练习
class Circle: NamedShape {
    var radius: Double
    let pi: Double = 3.14

    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        self.numbersOfSides = 0
    }

    func area() -> Double {
        return pi * self.radius * self.radius
    }

    override func simpleDescription() -> String {
        return "A circle with radius of \(self.radius)"
    }
}
let test2 = Circle(radius: 2.0, name: "my test circle")
print(test2.area())
print(test2.simpleDescription())

// getter and setter
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        self.numbersOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            self.sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "A equilateral triangle with sides of length \(self.sideLength)."
    }
}
var tariangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(tariangle.perimeter)
tariangle.perimeter = 9.0
print(tariangle.sideLength)

// willSet 和 didSet 观测器
class TriangleAndSquare {
    var tariangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            tariangle.sideLength = newValue.sideLength
        }
    }

    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        tariangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSqaure = TriangleAndSquare(size: 10, name: "test shape")
print(triangleAndSqaure.square.sideLength)
print(triangleAndSqaure.tariangle.sideLength)
triangleAndSqaure.square = Square(sideLength: 50, name: "larger sqaure")
print(triangleAndSqaure.tariangle.sideLength)

// 处理可选值?
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength
print(sideLength)