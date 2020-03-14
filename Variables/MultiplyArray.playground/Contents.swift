func multiply(numbers: [Int]) -> Int {
    var result = 1
    for index in 0...numbers.count - 1 {
        result *= numbers[index]
    }
    return result
}

multiply(numbers: [4, 5, 6])


