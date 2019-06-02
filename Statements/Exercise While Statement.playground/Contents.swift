/// Calculate the sum of all the digits of a number
// You first need to know the digits in the number and then added to the variable 'sum' that starts from 0. You can discover the digits from right to left by dividing the number by 10 and extracting the remainder with each operation. Continue dividing the number by 10 until the number becomes 0.
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
// Use the method above, but instead of adding the remainder to the sum, you multiply the remainders. Because you multiply, you'll have to start from 1.
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
// In order to verify which digit is the maximum, you need to check each digit (so go through all digits from right-to-left) similar to the method above. Compare the digit you discovered (the remainder) with the next one (that's in the previous position) by creating a variable called 'maximum' that takes an inital value 0 and, if the value of the remainder(digit) is higher, store it in maximum and compare it again with the next remainder you calculate (meaning the digit from the previous position) as you go from right to left in the number.
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

/// Calculate how many digits there are in a number
// Use the method of going through the digits of the number above, and use a counter each time you devide the number by 10 until the number is 0.
func countDigits(number: Int) -> Int {
    var nr = number
    var counter = 0
    while nr != 0 {
        nr = nr / 10
        counter += 1
    }
    return counter
}
countDigits(number: 127910)

/// Calculate the sum of the digits of a number that sit in even positions counting from the last digit to the front
// Use the same method with a counter from above, with the difference that you have to condition the counter to be even (meaning that the remainder to be 0) when you operate the sum of the remainders.
func getSumOfDigitsEvenPositions (number: Int) -> Int {
    var nr = number
    var counter = 0
    var sum = 0
    while nr != 0 {
        let remainder = nr % 10
        nr = nr / 10
        if counter % 2 == 0 {
            sum += remainder
        }
        counter += 1
    }
    return sum
}

getSumOfDigitsEvenPositions(number: 10734)

/// Compute a function that tests if a number is prime.
func testPrimeNumber(number: Int) -> Bool {
    let nr = number
    var isPrime = true
    var potentialDivisor = 2
    while potentialDivisor < nr {
        let reminder = nr % potentialDivisor
        if reminder == 0 {
            isPrime = false
        }
        potentialDivisor += 1
    }
    return isPrime
}
testPrimeNumber(number: 43)

