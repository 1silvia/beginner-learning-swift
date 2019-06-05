class Person {
    var name = ""
}

class BlogPost {
    
    //add '?' when an optional title propriety may or may not contain a value, in this case of type String
    var title:String?
    var body = "Johanna, I just wanted to say"
    //propriety author may or may not have a value of Person type
    var author:Person?
    
}

let post = BlogPost()

print(post.body + " hello!")

//optional binding - testing if there is a value in the optional "post.title" assign it to a constant. If it's 'nil' don't execute.
post.title = "First Day at School"

if let actualTitle = post.title {
    print("Best " + actualTitle)
}

//if you know there is a value, you can force unwrapping an optional value with '!'

print ("Best " + post.title!)

//Another way to verify if an optional has a value is by testing for nil
if post.title != nil {
    print("Best " + post.title!)
}
