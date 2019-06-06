//Properties allows you do some calculations and return a result when you call it

class Person {
    
    var name = ""
}

class BlogPost {
   
    var title:String?
    var body = "some text here"
    var author:Person?
    
    //Computed property - can do calculations and return a value
    var fullTitle:String {
        
        //Check if title and author are not nil
        if title != nil && author != nil {
            return title! + " by " + author!.name
        }
        else if title != nil {
            return title!
        }
        else {
            return "No title"
        }
    }
}

let nameAuthor = Person()
nameAuthor.name = "Mark Robinson"

let myPost = BlogPost()
myPost.author = nameAuthor
myPost.title = "Emerging Trends in Marketing"

//call the computed property
print(myPost.fullTitle)


