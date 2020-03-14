//given an array, write a function that calculates the sum of all the elements on even positions

func getSumSwiftEnumerated(input: [Int]) -> Int {
    var sum = 0
    input.enumerated().forEach { index, element in
        print("\(index) \(element)")
        if index % 2 == 0 {
            sum += element
        }
    }
    
    return sum
}

//given an array, write a function that calculates the sum of all the elements

func getSumSwift(input: [Int]) -> Int {
    var sum = 0
    input.forEach { element in
        sum += element
    }
    
    return sum
}

func getSum(input: [Int]) -> Int {
    var sum = 0
    for element in input {
        sum += element
    }
    
    return sum
}

func getSumUsingIndex(input: [Int]) -> Int {
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


getSumSwiftEnumerated(input: [1, 3, 4, 6])
getSumSwift(input: [1, 3, 4, 6])

getSum(input: [1, 3, 4, 6])
getSumUsingIndex(input: [1, 3, 4, 6])
getSumAdvanced(input: [1, 3, 4, 6])
change(input: [1, 3, 4, 6])

