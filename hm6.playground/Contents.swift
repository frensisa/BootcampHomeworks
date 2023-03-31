import UIKit

/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */
enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case dividion = "/"
}
/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int,
 + argument andSecondNumber, parametrs numberTwo, data type Int ,
 + argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result
 
 var result = numberOne
 
 switch calculationType {
 case .addition: result += numberTwo
 .....
 }
 print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
 return result
 
 */
var firstNumber: Int = 2
var andSecondNumber: Int = 3
var withCalculationType = CalculationType.addition

func calculateResult(numberOne: Int = firstNumber, numberTwo: Int = andSecondNumber, calculationType: CalculationType = withCalculationType) -> Int{
    
    var result = numberOne
    
    
    switch calculationType {
    case .addition: result += numberTwo
    case .subtraction: result -= numberTwo
    case .multiplication: result *= numberTwo
    case .dividion: result /= numberTwo
    }
    
    print("Result: \(numberOne) \(calculationType.rawValue) \(numberTwo) = \(result)")
    
    return result
}

calculateResult(numberOne: 5, numberTwo: 2, calculationType: .multiplication)



/*
 Exercise 1.2
 Declare two numbers.
 Call func 4 times for all calculateResult
 */
var num1 = 10
var num2 = 2

calculateResult(numberOne: num1, numberTwo: num2, calculationType: .addition)
calculateResult(numberOne: num1, numberTwo: num2, calculationType: .multiplication)
calculateResult(numberOne: num1, numberTwo: num2, calculationType: .dividion)
calculateResult(numberOne: num1, numberTwo: num2, calculationType: .subtraction)



/*
 Exercise 2
 
 Create struct Car with elements
 name: String
 productionYear: Int
 horsPower: Int
 
 Create func getSpecs() print it with elements provided above
 */
struct Car {
    var name: String
    var productionYear: Int
    var horsePower: Int
    
    func getSpecs(){
        print("\(name) made in \(productionYear) has \(horsePower) hp")
    }
}
/*
 Exercise 2.1
 Make example of struct Car with the name audiQ7
 Make a copy of audiQ7 and name it audiTT.
 Provide the correct name for audiTT
 
 Than run getSpecs() for audiQ7 and audiTT
 */
let audiQ7 = Car(name: "audiQ7", productionYear: 2020, horsePower: 335)
//audiQ7.getSpecs()

var audiTT = audiQ7
audiTT.name = "audiTT"
audiTT.horsePower = 228

audiQ7.getSpecs()
audiTT.getSpecs()


