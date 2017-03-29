//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/* 自定义类型别名 */
typealias Feet = Int
var distance: Feet = 100
print(distance)

/* 使用反斜杠 插入 变量 */
var 你好 = "市政府"
var 菜鸟 = "任免一批干部"
print("\(你好)\(菜鸟)")

/* 可选类型 ？、强制解析 */
var myString:String?
myString = "Hello, Swift!"
if myString != nil {
    print(myString!)
} else {
    print("myString 值为 nil")
}

/* 可选绑定 */
if let yourString = myString {
    print("你的字符串值为 \(yourString)")
} else {
    print("你的字符串没有值")
}


var A = 10
var B = 20
var C = 100

//C = A + B
//print("C 结果为：\(C)")
//
//C += A
//print("C 结果为：\(C)")
//
//C -= A
//print("C 结果为：\(C)")
//
//C *= A
//print("C 结果为：\(C)")
//
//C /= A
//print("C 结果为：\(C)")

//以下测试已注释，可去掉注释测试每个实例

 C %= A
 print("C 结果为：\(C)")
 
 
 C <<= A
 print("C 结果为：\(C)")
 
 C >>= A
 print("C 结果为：\(C)")
 
 C &= A
 print("C 结果为：\(C)")
 
 C ^= A
 print("C 结果为：\(C)")
 
 C |= A
 print("C 结果为：\(C)")


var index = 10

switch index {
case 100  :
    print( "index 的值为 100")
    fallthrough
case 10,15  :
    print( "index 的值为 10 或 15")
    fallthrough
case 5  :
    print( "index 的值为 5")
default :
    print( "默认 case")
}

var unicodeString01   = "菜鸟教程01"

var unicodeString02   = "菜鸟教程02"

unicodeString02 += unicodeString01
print(unicodeString02)


var optionalString: String? = "Hello"
print(optionalString == nil)
var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    //如果变量的可选值是nil,条件会判断为flase,大括号中的代码会被跳过。如果不是nil,会将值解包并赋给let后面的常量,这样代码块中就可以使用这个值了。
    greeting = "Hello, \(name)"
}
print(greeting)

let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

let age: Float = 4.0

let label = "The width is"
let width = 94
let widthLabel = label + String(width)

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
print(shoppingList)

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
print(occupations)

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    } }
print(teamScore)


var optionalString1: String? = "Hello"
print(optionalString1 == nil)
var optionalName1: String? = "John Appleseed"
var greeting1 = "Hello!"
if let name = optionalName1 {
    greeting1 = "Hello, \(name)"
}


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    } }
print(largest)


var total = 0
for i in 0..<4 {
    total += i }
print(total)


var total1 = 0
for i in 0...4 {
    total1 += i }
print(total1)

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")



func pingjunshu(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    print(sum)
    return sum / numbers.count
}
pingjunshu(numbers: 1,2,3,4,5,6,7,8)


func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(10)


func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)


numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})


func addTo(_ adder: Int) -> (Int) -> Int {
    return {
        num in
        return num + adder
    }
}

let addTwo = addTo(2)
let result = addTwo(6)
