# Theory-Of-Algorithms-CA


#Project Description
This project is a series of 10 problems to be solved using the Racket programming language. There are some restrictions in what keywords/functions can be used. It is intended that the solutions are done 'from scratch' where 'from scratch' means where possibly only using these keywords `cons, car, cdr, define, lambda, if, null, null?, cond, map, =, (+, -, *, /, modulo)`.  
The total weight for the project is 30% with equal distribution for each problem

## Solution design 

About 1/4 way through the year I began to read the material book The Little Schemer which was suggested by the lecturer. After reading the first few chapters numerous times I formed a began to structure my solutions trying my best to follow the Commandments and Laws outlined in the book.   
As a result most of the solutions make heavy use of the `cond` key word which is used to ask questions.  
The first question asked in most solutions depends on whether we need to recur over a list of atoms or recur over a number. In the case of a list, ask two questions 
```
	(null? l) and else
```  
In the case of a number ask two questions :
```
	(zero? n) and else
``` 


### Learning Outcomes 
Some might say this modules outcomes are learning functional programming, learning about Turing machines; however I think the biggest learning outcome from this module is learning to think recursively as the concept of recursion plays a part in some of the most efficient algorithms.  

### Tooling
For the 10 problems I opted to use Dr Racket rather than VSCode. This was acquired on the racket webstie


### Conclusion
I found learning Scheme/Racket to be interesting once I got over the initial bump. One of the hardest challenges I had to overcome was the large amount of brackets used in Scheme and I often found myself just adding loads of ')' brackets at the end of my function which ended up causing problems sometimes. My solution for this was to try and structure my code similar to python with each line indented appropriately.


## Explanation of problems :

Each problem has its own folder and inside each is a README outlining the problem and some comments on the solution. It is intended to view the problems directly on Github which will display the README when you head to a folder. If you are downloading locally it is best to use this README as a resource instead.

Here is a paste of each problem README for ease of reading : 

# Problem 1 : Primality Test

What is a Brute-Force Algorithm?

Brute-Force search, is also sometimes called Exhaustive search, is a straightforward problem-solving technqiue used in computer science. This algorithm consists of systematically enumerating all possible candidates for the solutions and them evaluating each one against our test condition. In this case the test-codition is checking for primality. Brute-force searchs are log(n) on average meaning the amount of computational power needed to fufill this brute force search grows linearly with how much data we have to search.

There are a number of edge cases of primes which need to be accounted for :

* 1 is not prime by definition
* 2 is prime by definition
* 3 is prime

These edge cases can cause problems with the usual methods of evaluating primes. For that reason we will specifally check for these numbers and return hardcoded results. Everything else will be handled by the algorithm.


Potential Improvements:
A mathematical anaomoly that has been observed with primes is that all primes with the exception of the edge cases follow the pattern 6k+1 or 6k-1. I would have liked to have implemented this in the program.

# Problem 2 : Collatz List

Problem

Write, from scratch, a function in Racket that takes a positive integer n0 as input and returns a list by recursively applying the following operation, starting with the input number.

End the recursion when (or if) the number becomes 1. Call the function collatz-list. So, collatz-list should return a list whose first element is n0, the second element is n1, and so on. For example:
> (collatz-list 5)
'(5 16 8 4 2 1)
> (collatz-list 9)
'(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)
> (collatz-list 2)
'(2 1)


The solution to this problem is achieved using the cons keyword in scheme. cons will be used to help construct a list in which our values will be placed. At each iteration of the recursion another value will be evaluated and added to the list until n == 1.

The list continues folllowing one of 2 possible permutations on every iteration. When the expression evaluates to true, the recursion ends and we should produce the list.

The last value added to the list is an empty list. This is to prevent the last value being the outcome of the `cond` rather than the number 1

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

# Problem 4 : sublsum

Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero.
For this problem, you can use the combinations built-in function.
Note the order of the sublists and their elements doesn't matter.
For example:
> (sublsum (list 1 2 3 4 -5))
'((2 3 -5) (-5 1 4))
> (sublsum (list 1 2 3 4 5))
'()

For the sublsum we only need to ask 2 questions.
1 is l null?
2 what is the result of (zero? (apply + l)) where apply+l is all the pairs in l and  zero? returns all the pairs which add to zero

This sublsum can then be used to contrains the result of combinations 

# Problem 5 : Hamming Weight


Write a function hamming-weight in Racket that takes a list $l$ as input and returns the number of non-zero elements in it.
For example:
> (hamming-weight (list 1 0 1 0 1 1 1 0))

Hamming weight involves recuring over a list of elements and asking 2 questions :
* if l is null
* if the car of l is 1

if it is then 1 is added to the weight and the recursion continues
if not then nothing is added and again, recursion continues.

# Problem 6 : Hamming Distance


Write a function hamming-distance in Racket that takes two lists and returns the number of positions in which differ.
For example:
> (hamming-distance (list 1 1 1 1 0 0 0 0) (list  1 0 1 0 1 1 1 0))
5

The hamming-distance is a similar algorithm to the hamming-weight. Infact it is almost identical with one major change.
Rather than taking in 1 list and checking if an atom is 1 or 0, we are taking in 2 lists and checking if their respective atoms are the same.

There are 3 test cases in this show different outcomes including a zero outcome.

# Problem 7 : Maj


Write a function maj in racket that takes three lists x,y and z of equal length and containing only 0's and 1's. It should return a list containing 1 where two or more of the x y or z values are 1,  and 0 otherwise
For example:
>(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 0 0 1 0 1 1 1)

# Problem 8 : chse


Write a function maj in racket that takes three lists x,y and z of equal length and containing only 0's and 1's. It should return a list containing 1 where the subsequent x is 1 and z other wise
For example:
>(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 1 0 1 0 0 1 1)

# Problem 9 : sod2


9. Write a function sod2 in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing a 1 where the number of 1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise. For example:
> (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 1 1 0 1 0 0 1)

This problem is solved, like the last 2 problems, using the map keyword. problems 7 and 8 focused on the amound of non zero elements and the values of x respectively. This problem combines the two in a sense. Solving the problem is done by summing each iteration of the list and then checking the remainder of this with modulo. If the sum ends up odd, we can assume there is an odd number of 1's in this place on the list.

# Problem 10 : lstq


10. Write a function lstq in Racket that takes as arguments two lists l and m of equal length and containing numbers. It should return d, the distance given by the sum of the square residuals between the numbers in the lists:

d =  e(Li − Mi)*2
This means take the ith element of m from the ith element of l and square the result for all i. Then add all of those to get d. For example:
> (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
54.61


This problem was solved through 2 helper functions. The algorithm for this can be broken down into 3 steps :  
1. Iterate over L and M to get L*i* and M*i*  
2. Take M*i* from L*i* and square the result  
3. Sum the square residuals returned from steps 1 and 2  

