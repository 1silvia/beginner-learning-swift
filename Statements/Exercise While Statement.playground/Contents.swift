/// Calculate the sum of all the digits of a number
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

/// Calculate the product of all digits of a number
func calcultateProdOfDigits(number:Int) -> Int {
    var multiply = 1
    var nr = number
    while nr != 0 {
        let remainder = nr % 10
        nr = nr / 10
        multiply *= remainder
    }
    
    return multiply
}

calcultateProdOfDigits(number: 1234)

/// Return the maximum digit of a number
func getMaximumDigit(number: Int) -> Int {
    var nr = number
    var maximum = 0
    while nr != 0 {
        let remainder = nr % 10
        nr = nr / 10
        if maximum < remainder {
            maximum = remainder
        }
    }
    
    return maximum
}

getMaximumDigit(number: 12591)

/// Return the reverse order of digits of a number
func getReverse(number: Int) -> Int {
    var nr = number
    var reverseNumber = 0
    while nr != 0 {
        let remainder = nr % 10
        nr = nr / 10
        reverseNumber = reverseNumber * 10 + remainder
    }
    
    return reverseNumber
}

getReverse(number: 1234)
