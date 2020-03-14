// write a function that given an array returns the maximum element

// e.g.
// for let array = [1, 2, 10, 3, 7]
// returns 10

func getMaximum(source: [Int]) -> Int {
    var maximumNumber = 0
    for index in 0...source.count - 1 {
        if maximumNumber < source[index] {
            maximumNumber = source[index]
        }
    }
    
    return maximumNumber
}

func getMaximumSimplifiedEvenMore(source: [Int]) -> Int {
    var maximumNumber = 0
    for element in source {
        if maximumNumber < element {
            maximumNumber = element
        }
    }
    
    return maximumNumber
}
