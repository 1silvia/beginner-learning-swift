/// Calculate the sum of all the digits that make a number
func calculateSumOfDigits(number: Int) -> Int {
    var nr = number
    var sum = 0
    while nr != 0 {
        let remainder = nr % 10
        nr = nr / 10
        sum += remainder
    }
    
    return sum
}

calculateSumOfDigits(number: 123)
