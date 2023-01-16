import Foundation
import Darwin

func logClass(val: Double) -> Double {
    return log(val)/log(0.00002910046117) + 1.6
}


// ClassDecodable
print("== ClassDecodable")
for index in 0...161 {
    let dIndex = Double(index)
    let rate = logClass(val: dIndex)
    let size = 6.54 + dIndex * rate
    print("index:\(index) size:\(size)")
}

// StructDecodable

func inCreateStruct(val: Double) -> Double {
    return 0.00007689 * val * val - 0.01596722 * val + 1.75589033
}

print("== StructDecodable")
for index in 0...161 {
    let dIndex = Double(index)
    let rate = inCreateStruct(val: dIndex)
    let size = 6.39 + Double(index) * rate
    print("index:\(index) size:\(size)")
}
//y=6.39+x*(0.00007689*x*x-0.01596722*x+1.75589033)
// y=ABS(6.39+(A2)*ABS(LN((A2))/LN(0.00000910046117)+1.6))
//=ABS(6.39+A2*ABS(0.00007689*A2*A2-0.01596722*A2+1.75589033))

// Class
print("== Class")
for index in 0...161 {
    let size = 0.7 + Double(index) * 0.715
    print(size)
}




// Struct
print("== Struct")
for index in 0...161 {
    let size = 0.15 + Double(index) * 0.41
    print(size)
}





final class Ref<T> {
    var value: T
    init(value: T) {
        self.value = value
    }
}

struct Box<T> {
    var ref: Ref<T>
    init(value: T) {
        ref = Ref(value: value)
    }

    var value: T {
        get { return ref.value }
        set {
            guard isKnownUniquelyReferenced(&ref) else {
                ref = Ref(value: newValue)
                return
            }
            ref.value = newValue
        }
    }
}

struct User {
    var identifier = 1
}

//打印内存地址
func address(of object: UnsafeRawPointer) {
    let addr = Int(bitPattern: object)
    print(NSString(format: "%p", addr))
}


var user = User()
address(of: &user)
var box = Box(value: user)
print("box:")
address(of: &box.ref.value)
var box2 = box                  // box2 shares instance of box.ref
print("box2:")
address(of: &box2.ref.value)

box2.value.identifier = 2
print("box.use.identifier:\(box.value)")
print("box2.use.identifier:\(box2.value)")
