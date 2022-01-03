import UIKit

var greeting = "hello"
print(greeting)

let name : String = "In-Yeong"
print("My name is \(name)")

for i in 1...5{
    print(i, terminator: ".")
}

print("\(type(of: name))")

var boolean : Bool = true
boolean.toggle()

var str1 : String = "abc"
var str2 : String = String()

str1.append("xyz")

str2 = str2 + "alpha " + str1

print(name.count)
print(name.isEmpty)
name.uppercased()

var Person : (String, Int, Double) = ("IN", 20, 111.11)
// 순서대로만 가능한듯

var Person2 : (name: String, age: Int, height: Double)
Person2.name = name
Person2.age = 27
Person2.height = 163.0
print(Person2.0)

typealias DogTuple = (name: String, age: Int, weight: Double)
let happy : DogTuple = ("happy", 2, 4.2)
print("이름: \(happy.name), 나이: \(happy.age), 무게: \(happy.weight)")

var alpha: [String] = ["A", "B", "C"]
print(alpha.count)
alpha[1] = "Z"
type(of: alpha)

var any : [Any] = [1, "a", 0.5]
any[0] = "B"
any
type(of: any)

alpha.append("E")
any.insert(3, at: 1)
alpha.insert(contentsOf: ["X", "Y"], at: 2)
alpha.insert("A", at: 0)
let firstItem: String = alpha.removeFirst()
let indexOneItem: String = alpha.remove(at: 3)

print(firstItem, indexOneItem)
print(alpha)
print(alpha[2 ... 3])

var dictionary : [String: Int] = [:]
print(type(of: dictionary))
dictionary["Kim"] = 100
dictionary["Lee"] = 200
dictionary["Kim"] = dictionary["Kim"]! + 100
print(dictionary["Kim"]!)
// Optional로 감싸진 경우 => 값이 nil 일수도 있다는 여지를 주는 것
// nil이 아님을 보장할 수 있을 경우 뒤에 !를 붙여 unwrap 할 수 있다
dictionary.removeValue(forKey: "Lee")
print(dictionary)

