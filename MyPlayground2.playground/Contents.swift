import UIKit

struct Sample {
    var mutableProperty: Int = 100
    let immutableProperty: Int = 100
    static var typeProperty: Int = 100
    
    func instanceMethod() {
        print("instance method")
    }
    
    static func typeMethod() {
        print("type method")
    }
}

var mutable: Sample = Sample()
mutable.mutableProperty = 200
// mutable.immutableProperty = 200
// -> immutableProperty를 let으로 정의하였기 때문에 재정의 불가

let immutable: Sample = Sample()
// immutable.mutableProperty = 200
// -> immutable을 let으로 정의하였기 때문에 그 내부도 재정의 불가

Sample.typeProperty = 300
Sample.typeMethod()
// Sample.instanceMethod()
// mutable.typeProperty = 300
// -> Sample(구조체 자체)에서는 static이 아닌 것에 접근 불가
// -> mutable(구조체를 타입으로 갖는 변수나 상수)에서는 static이 붙은 것에 접근 불가

