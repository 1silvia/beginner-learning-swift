//Properties - variables that are associated with a class

class Person {
    
    var name = ""
}

class BlogPost {
    
    var title: String?
    var body = "Content goes in here"
    var author:Person?
    var numberOfComments = 0
    
//When you work inside the class, the properties inside the class can be accessed inside of any of the functions inside that class
    
    func addComment() {
        print(body)

        //If you declare a variable inside a function inside a class, the existence of that variable is going to be limited to the scope of that function. It's called 'a local variable'
        var myComment = "Some comment"
    }
    
    func shareArticle() {
        //print(myComment) - not possible because 'myComment' was declared in an independent function, it's a local variable
    }
    
}

//Properties are attached to the object of the class, can take different values independent of one another
let myPostOne = BlogPost()
myPostOne.title = "Title 1"
myPostOne.title

let myPostTwo = BlogPost()
myPostTwo.title = "Title 2"
myPostTwo.title


