func multiply(number1: Float, number2: Float) -> Float {
    return number1 * number2
}

multiply(number1: 3.5, number2: 5.6)

//given an array, right a function that calculates the sum of all the elements

func getSum (input: [Int]) -> Int {
    var sum = 0
    for index in 0...input.count - 1 {
        sum += input[index]
    }
    return sum
}

getSum(input: [1, 3, 4, 6])


