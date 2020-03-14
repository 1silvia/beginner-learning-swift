func multiply(number1: Float, number2: Float) -> Float {
    return number1 * number2
}

multiply(number1: 3.5, number2: 5.6)

//given an array, write a function that calculates the sum of all the elements

func getSum (input: [Int]) -> Int {
    var sum = 0
    for index in 0...input.count - 1 {
        sum += input[index]
    }
    
    return sum
}

func getSumAdvanced (input: [Int]) -> Int {
    return input.reduce(0) { previousResult, element in
        previousResult + element * 10
    }
}

func change(input: [Int]) -> [Int] {
    return input.map { element in
        element * 10
    }
}

getSum(input: [1, 3, 4, 6])
getSumAdvanced(input: [1, 3, 4, 6])
change(input: [1, 3, 4, 6])

