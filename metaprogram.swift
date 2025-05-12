// 泛型，自动类型推导
func makeArray<Item>(repeating item: Item, numberofTimes: Int) -> [Item] {
    var result: [Item] = []
    for _ in 0..<numberofTimes {    // 左闭右开区间，...左闭右闭区间
        result.append(item)
    }
    return result
}

print(makeArray(repeating: "knock", numberofTimes: 4))

enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}

var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool 
    where T.Element: Equatable, T.Element == U.Element
{
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}