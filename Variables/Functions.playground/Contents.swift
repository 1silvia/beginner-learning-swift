import UIKit

var str = "Hello, playground"

//Functions
func getResult (){
    let a = 5
    let b = 6
    let sum = a + b
    
    print (sum)
}

//Functions: Return Values

func getName()-> String {
    let firstName = "Silvia"
    let lastName = " I"
    let name = firstName + lastName
    return name
}

getName()

//return value + argumentLabels & parameter names

func getSum(number1: Int, number2: Int)-> Int {
    return number1+number2
}

getSum(number1: 1, number2: 4)


//calculate the price of sugar given a certain weight in grams and a certain price for 1kg of sugar.

func findPrice(priceSugar: Float, weightSugar: Float) -> Float {
    return (priceSugar * weightSugar) / 1000
}

func findPriceFinal(priceSugar: Float, weightSugar: Float) -> String {
    let price = findPrice(priceSugar: priceSugar, weightSugar: weightSugar)
    return "\(price) dollars"
}

func formattedPrice(price: Float) -> String {
    return "\(price) dollars"
}

let result = findPrice(priceSugar: 10, weightSugar: 300)
let sugarFormattedPrice = formattedPrice(price: result)

