///The 'init' function is called in the class to make sure the values for the object proprities are set

class Person {
    
    var name = ""
    var age = 0
    
//method 1: calling the initializer fuction of the Person class to create an object
    
    init() {
        //Set up the object and write code to cusomize the proprieties of the object
        name = "Chris"
        age = 33
    }
    
}

//method 2: calling the initializer fuction of the Person class to create an object
var a = Person()


//another way to initialize is with parameter names in the 'init' function

class Car {
    
    var brand = ""
    var color = ""
    
    init(b: String, c: String) {
        brand = b
        color = c
        
    }
//or in case the proprieties and parameters have the same name, differentiate by adding 'self' to the object propriety
    init(brand: String, color:String) {
        self.brand = brand
        self.color = color
    }
    
}

var sale1 = Car(b: "Volvo", c: "black")
var sale2 = Car(brand: "Mercedes", color: "red")



