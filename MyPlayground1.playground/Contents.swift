import UIKit

let first : Int = 1
let second : Int = 2

if first > second {
    print("first > second")
} else if first < second {
    print("first < second")
} else {
    print("first == second")
}

let integerValue : Int = 5

switch integerValue {
case 0:
    print("Value == Zero")
case 1...10:
    print("Value == 1~10")
    fallthrough // 다음 case 무조건 실행
case Int.min..<0, 101..<Int.max:
    print("Value < 0 or Value > 100")
    break
default:
    print("10 < Value <= 100")
}

for i in 0...5 {
    if i.isMultiple(of: 2) {
        print(i)
        continue
    }
    print("\(i) == 홀수")
}

let helloSwift : String = "Hello Swift!"
for char in helloSwift {
    print(char)
}

let friends : [String: Int] = ["Kim" : 20, "Lee" : 22, "Park" : 21]
for tuple in friends {
    print(tuple)
}

let areaCode : Set<String> = ["02", "031", "032", "032"]
// Set은 중복제거됨
for code in areaCode {
    print(code)
}

var names : [String] = ["Kim", "Lee", "Park", "Kim"] // Array
while names.isEmpty == false {
    print("Good bye \(names.removeFirst())")
}

names = ["Kim", "Lee", "Park"]
repeat {
    print(names.removeFirst())
} while names.isEmpty == false

var numbers : [Int] = [3, 2134, 45, 56]

numbersLoop : for num in numbers {
    if num > 5 || num < 1 {
        continue numbersLoop
    }
    
    var count: Int = 0
    
    printLoop : while true {
        print(num)
        count += 1
        
        if count == num {
            break printLoop
        }
    }
    
    removeLoop : while true {
        if numbers.first != num {
            break numbersLoop
        }
        numbers.removeFirst()
    }
}
print(numbers)


func hello(name : String) -> String {
    return "Hello \(name)"
}
let helloJenny : String = hello(name: "Jenny")
print(helloJenny)
