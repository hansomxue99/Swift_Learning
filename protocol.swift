protocol ExampleProtocol {
    var simpleDescription: String { get }   // get 读取权限
    mutating func adjust()  // mutating 允许修改自身
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {     // class 中的方法一般都是默认mutating
        simpleDescription += "  Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
print(a.simpleDescription)

struct SimpleStruct: ExampleProtocol {
    var simpleDescription: String = "A simple structure."
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

var b = SimpleStruct()
b.adjust()
print(b.simpleDescription)


extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

print(7.simpleDescription)

protocol ExampleProtocol2 {
    var simpleDescription: String { get }   // get 读取权限
    mutating func absolutionValue()
}

extension Double: ExampleProtocol2 {
    var simpleDescription: String {
        return "The float number \(self)"
    }
    mutating func absolutionValue() {
        if self < 0 {
            self = -self
        }
    }
}

var c = -10.0
c.absolutionValue()
print(c.simpleDescription)


let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
// print(protocolValue.anotherProperty)