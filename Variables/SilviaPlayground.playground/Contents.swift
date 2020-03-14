
//array - store values in variables and call them by their positon; you can have doubles
let jane = "Jane Robinsson"
let jack = "Jack Robinsson"
let family: [String] = [jane, jack]
family[1]

//sets - like an array, but position is unknown and ignores doubles so the collection is unique
let giraffe = 5
let elephants = 10
let monkeys = 4
let animals: Set<Int> = Set([giraffe, elephants, monkeys, elephants])

//tuples - storing several values in a single variable, call it by position or name of value
let person = (first: "Barack", last: "Obama", age: 45, job: "President")
person.0
person.age

//dictionaries - store values with identifiers (keys) rather than integer positions, call values by their keys
let salariesEmployees: [String: Int] = ["Mary Johnson": 34_000, "Harry Law": 30_000, "Dave Harrison": 25_000]
salariesEmployees["Mary Johnson"]
salariesEmployees["Silvia Istudor", default: 0]


//empty array:
var results = [Int]()
var streets = Array<String>()

//empty dictionary
var teams = [String: String]()
var cities = Dictionary<String, String>()

//empty sets:
var birds = Set<Int>()

//enum: defining a type of related and particular values

enum Gender {
    case female
    case male
}

enum AppleType {
    case delicious
    case golden
    case grannySmith
}

var myFavoriteAppleType: AppleType = .delicious
myFavoriteAppleType = .golden


let gender: Gender = Gender.male

//enum associated values - enum can store values attached to each case

enum Vacation {
    case mountains
    case beach
    case cityEscape(destination: String)
}

let myVacation = Vacation.cityEscape(destination: "Paris")

enum BuildingType: String {
    case villa = "V"
    case apartment = "Apt"
    case house = "H"
}

var building = BuildingType.apartment
building = BuildingType.init(rawValue: "H")!

var stringFromVilla = BuildingType.villa.rawValue

enum Program: String {
    case bachelor = "BA"
    case master
    case PhD
}

let student = (lastName: "Harrison", age: 20, program: Program.init(rawValue: "BA"))
student.age
student.program
student.2

var array: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

//Write a Swift program to check if 5 appears as either the first or last element in a given array of integers. The array length should be 1 or more

func findLocation(location: [Int]) -> Bool {
    if location.count == 0 {
        return false
    }
    
    let firstElement = location[0]
    let lastElement = location[location.count - 1]
    
    if firstElement == 5 || lastElement == 5 {
        return true
    }
    else
    {
        return false
    }
}

findLocation(location: [5, 2, 7, 6, 5, 1, 2, 3, 0])
findLocation(location: [2, 7, 6, 5, 1, 2, 3, 0])
findLocation(location: [2, 7, 6, 5, 1, 2, 3, 5])
findLocation(location: [])

//Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.

func findEquals (twins: [Int]) -> Bool {
    if twins.count == 0 {
        return false
    }
    let firstEqual = twins[0]
    let lastEqual = twins[twins.count - 1]
    if firstEqual == lastEqual {
        return true
    }
    else {
        return false
    }
}

findEquals(twins: [4, 2, 7, 9, 0])
findEquals(twins: [4, 5, 6, 7, 4])
findEquals(twins: [3, 5, 6, 2])
findEquals(twins: [])

//Write a Swift program to compute the sum of all the elements of a given array of integers and length 4

func findSum(elements: [Int]) -> Int {
    if elements.count != 4 {
        return 0
    }
    let Sum = elements[0] + elements[1] + elements[2] + elements[3]
    return Sum
}

findSum(elements: [3, 6, 1, 6])
findSum(elements: [4, 6, 11, 5, 6])
findSum(elements: [3, 6, 1, 8, 9, 0, 8, 7])
findSum(elements: [3, 6])
findSum(elements: [])

//Write a Swift program to compute the sum of the first 2 elements of a given array of integers. Return 0 if the length of the given array is 0 and return the first element value If the array length is less than 2

func findSumFirstTwo(arrayElem: [Int]) -> Int {
    if arrayElem.count == 0 {
        return 0
    }
    if arrayElem.count < 2 {
        return arrayElem[0]
    }
    let sumFirstTwo = arrayElem[0] + arrayElem[1]
    return sumFirstTwo
}

findSumFirstTwo(arrayElem: [1, 3, 4, 5, 7, 3, 0])
findSumFirstTwo(arrayElem: [1, 3, 4, 5])
findSumFirstTwo(arrayElem: [1])
findSumFirstTwo(arrayElem: [1, 3, 4])
findSumFirstTwo(arrayElem: [])

//Write a Swift program to create an array of length 2 containing the middle two elements from a given array of integers and even length 2 or more.

func getMiddleElements(source: [Int]) -> [Int] {
    if  source.count % 2 == 1 {
        return [0, 0]
    }
    
    if source.count == 0 {
        return [0, 0]
    }
    
    let middlePositionLeft = source[(source.count / 2) - 1] // position 2
    let middlePositionRight = source[source.count / 2]// position 3
    let resultArray: [Int] = [middlePositionLeft, middlePositionRight] // array with position 2 and position 3
    return resultArray
}

getMiddleElements(source: [1, 2, 3, 4, 5, 6])
getMiddleElements(source: [1, 2, 3, 4, 5, 6, 7, 8])
getMiddleElements(source: [1, 2, 3])
getMiddleElements(source: [])

//Write a Swift program that returns the middle element from a given array of integers and odd length 1 or more.

func getMiddle(storage: [Int]) -> Int {
    if storage.count % 2 == 0 {
        return 0
    }
    if storage.count == 0 {
        return 0
    }
    let middle = storage[storage.count / 2] // middle element
    return middle
    
}

getMiddle(storage: [1, 2, 3, 4, 5])
getMiddle(storage: [1, 2, 3])
getMiddle(storage: [1, 2])
getMiddle(storage: [1])
getMiddle(storage: [])

// Write a Swift program to swap the first and last elements of a given array of integers. Return the modified array (length will be at least 1)

/// Swaps first and last element without changing the original array
func swappedElements(source: [Int]) -> [Int] {
    if source.count <= 1 {
        return source
    }
    
    var result = source
    let first = result[0]
    let last = result[result.count - 1]
    result[0] = last
    result[result.count-1] = first
    return result
}

swappedElements(source: [1, 2, 3, 4])
swappedElements(source: [1, 2])
swappedElements(source: [1])
swappedElements(source: [])

//Write a Swift program to create a new array taking the first element from two given arrays of integers. If either array is length 0, ignore that array.

func getResult(source1: [Int], source2: [Int]) -> [Int] {
    if source1.count == 0 && source2.count == 0 {
        return []
    }
    
    if source1.count == 0 {
        return [source2[0]]
    }
    if source2.count == 0 {
        return [source1[0]]
    }
    
    return [source1[0], source2[0]]
}

getResult(source1: [1, 2, 4, 6, 5], source2: [5, 7, 11, 4])
getResult(source1: [], source2: [2, 3])
getResult(source1: [1, 3], source2: [])
getResult(source1: [], source2: [])

