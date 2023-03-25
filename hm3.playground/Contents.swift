import UIKit
/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */
var amount = 500000.0
var rate: Double = 0.03
var profit: Double = 0.0
var period: Int = 5
for _ in 1...period{
    profit += amount * rate
}
var deposit = amount + profit
print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")


/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */
let myArray: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
var myEvenArray: [Int] = []
for number in myArray{
    if number % 2 == 0{
        myEvenArray.append(number)
    }
}
print("My even numbers are: \(myEvenArray)")


/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */
var counter = 0
while true{
    let randNum = Int.random(in: 1...10)
    counter += 1
    if randNum == 5{
        print("Number 5 will be after \(counter) shuffles")
        break
    }
}

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

var days = 0
var distance = 0
while distance < 10{
    distance += 2
    days += 1
    if distance == 10{
        break
    }
    distance -= 1
}
print("bug will spend \(days) to reach top of the post")
