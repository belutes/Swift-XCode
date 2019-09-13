import UIKit

var str = "Hello, playground"

// Create the funtion
func sayhHello(){
    print("Hello")
}

// Call the function
sayhHello()

// Function with parameters
func sayHelloTo(name:String, age:Int){
    print("Hello \(name), you're \(age) years old")
}

// Call the function, assign string "Tom" to parameter "name"
// Assign 45 to age parameter (Int)
sayHelloTo(name: "Tom", age: 45)

sayHelloTo(name: "Bob", age: 35)

// Function with return value
func addFourTo(x:Int) -> Int {
    let sum = x + 4
    print(sum)
    return sum
}
// The variable "sum" is within the scope of the function and
// is not visible otside that scope. print(sum) would only work within the function
// and only if parameter "x" is assigned a value in a function call
var result = addFourTo(x: 10)
print(result)

