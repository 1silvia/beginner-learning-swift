//Classes - help you define your own custom data type, it's like a template or blueprint to create actual, tangible objects; when you write, start off with capital letter like other data types; Classes take proprieties that you define as variables or functions.

class BlogPost {
    
    var title = ""
    var body = ""
    var author = ""
    var numberOfComments = 0
    
    func addComment() {
        numberOfComments += 1
    }
    
}

//When you create instances of a class they become objects

let myPost = BlogPost()
myPost.title = "Creative Writing"
myPost.body = "Tips and advice on how to write original stories"
myPost.author = "John King"
myPost.addComment()
print(myPost.numberOfComments)


print(myPost.title)

let mySecondPost = BlogPost()
mySecondPost.author = "Henry King"
mySecondPost.body = "Let's hear from Mr. King about his adventures as a writer of thrillers"
mySecondPost.title = "Interview with a famous writer"
print(mySecondPost.numberOfComments)
//to print the number of comments that increased you have to call the addComment function first

