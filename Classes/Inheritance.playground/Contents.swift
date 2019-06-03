//Inheritance - the process that allows us to build subclasses upon existing classes, so we won't end up creating multiple classes that have similar proprieties

// Below is an example of 2 classes (class Car and class Futurecar) that have very similar proprities.

class Car {
    var topSpeed = 200
    func drive() {
        print("Driving at \(topSpeed)")
    }
    
}

class Futurecar {
    
    var topSpeed = 250
    func drive() {
        print("Driving at \(topSpeed)")
    }
    func fly() {
        print ("Flying")
    }
}

// To avoid redundancy, Futurecar should become a subclass that inherits the proprieties of Car. The example below is doing just that, where Futurecarmodel will inherit the proprieties of class Carmodel. Since the Futurecarmodel is faster, the drive func will be overidden.

class Carmodel {
    var topSpeed = 200
    func drive() {
        print("Driving at \(topSpeed)")
    }
    
}

class Futurecarmodel : Carmodel {
    
    override func drive() {
        //if you want to modify the value of the propriety from the original class, also called Super class
        print("Driving at \(topSpeed + 100)")
    
        //if you want to call the value from the original class plus something extra, you call it by referring to the original class with 'super.propriety'
        super.drive()
        print("and rockets go at 100%")
    }
    func fly() {
        print ("Flying")
    }
}


let myRide = Carmodel()
myRide.topSpeed
myRide.drive()

let myFutureRide = Futurecarmodel()
myFutureRide.drive()
