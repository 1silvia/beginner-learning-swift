//operators in 'if statements': >, <, >=, <=, || (or) , && (and)

//You want to make a fruit cake. You must have at least 3 pineapples. Besides pinapples, you also need either at least 5 oranges or at least 10 bananas. You can only compromise on the quantitiy of either oranges or bananas, but not on pineapples. Print "you have enough for the cake" if that's true, otherwise print 'you need to buy more fruits for the cake'

var oranges = 4
var pineapples = 3
var bananas = 15

if (oranges >= 5 || bananas >= 10) && pineapples >= 3 {
    print ("you have enough fruits for the cake")
} else if pineapples < 3 {
    print("you need to buy more fruits for the cake")
}
