//repeat statement - different from 'while' statement because it executes the code and only after that checks the condition

// in the first case the counter decreases by 1 and the code it will run 10 times until the counter becomes 0, then it stops.
var counter = 10

repeat {
    print ("true")
    counter -= 1
} while counter > 0

//in the second case, the first code block will run only once (so it will print "true" and the counter will decrease by 1), and then it will stop because the current state (-4) it is now less than 0.

counter = -3

repeat {
    print ("true")
    counter -= 1
} while counter > 0
