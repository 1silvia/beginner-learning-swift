/// Checks if a number is perfect
func isPerfect(number: Int) -> Bool {
    // sum needs to be initialized with 0 as I will be adding divisors
    var sumOfDivisors = 0
    
    // all valid potential divisor are between 1 and less than the number
    for potentialDivisor in 1..<number {
        // if the remainer of the division between the number and potentialDivisor is 0
        // it means that potentialDivisor is actual a divisor
        if number % potentialDivisor == 0 {
            // now that I know that potentialDivisor is a divisor
            // I need to add the divisor to the sum of divisor
            sumOfDivisors += potentialDivisor
        }
    }
    
    // I can decide if a number is perfect or not by checking
    // if the number is equal with the sum of its divisors
    return number == sumOfDivisors
}

isPerfect(number: 3)
isPerfect(number: 6)
