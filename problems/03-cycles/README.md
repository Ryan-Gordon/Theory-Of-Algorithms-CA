# Theory-Of-Algorithms-CA
# Problem 3 : LCycle RCycle

Problem

Write, from scratch, two functions in Racket.
The first is called lcycle
It takes a list as input and returns the list cyclically shifted one place to the left.
The second is called rcycle, and it shifts the list cyclically shifted one place to the right.

For example:
> (lcycle (list 1 2 3 4 5))
'(2 3 4 5 1)
> (rcycle (list 1 2 3 4 5))
'(5 1 2 3 4)

While completing this problem I have made it to chapter 3 of the little schemer, Cons the Magnificent.

Initially I tried to solve this by just using car and cdr but fell short when I ended up with a list similar to :
'((2345)1) which isint perfect but very close.
One way to sort out the list is to use append a keyword in racket but it isint on the list of approved functions.

One way to achieve the solution to this problem I found on [stack over flow](https://stackoverflow.com/questions/29137103/creating-an-append-function-in-racket). I decided to create me own append function which uses both cons and recursion to do the append.
The result is very similar however now the whole solution for lcycle is using cons

I am trying to structure my functions so that just like in the little schemer the first question that is asked is :
(null? lat)
if its not null , start to ask other questions about the list.
