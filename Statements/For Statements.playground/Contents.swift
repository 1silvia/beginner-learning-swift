//for..in loop statement

//Calculate the sum of all the numbers ranging form 1 to 10.
var sum = 0

for index in 1...10 {
    sum += index
}
print (sum)

//Calculate the sum between 3 and each consecutive number ranging from 1 to 6. Print '(number) plus 3 is (theSum)'

for index in 1...6 {
    print ("\(index) plus 3 is \(index + 3)")
}
