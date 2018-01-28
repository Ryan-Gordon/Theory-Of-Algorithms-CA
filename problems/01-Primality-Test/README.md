# Theory-Of-Algorithms-CA
# Problem 1 : Primality Test

What is a Brute-Force Algorithm?

Brute-Force search, is also sometimes called Exhaustive search, is a straightforward problem-solving technqiue used in computer science. This algorithm consists of systematically enumerating all possible candidates for the solutions and them evaluating each one against our test condition. In this case the test-codition is checking for primality. Brute-force searchs are log(n) on average meaning the amount of computational power needed to fufill this brute force search grows linearly with how much data we have to search.

There are a number of edge cases of primes which need to be accounted for :

* 1 is not prime by definition
* 2 is prime by definetion
* 3 is prime

These edge cases can cause problems with the usual methods of evaluating primes. For that reason we will specifally check for these numbers and return hardcoded results. Everything else will be handled by the algorithm.


Potential Improvements:
A mathematical anaomoly that has been observed with primes is that all primes with the exception of the edge cases follow the pattern 6k+1 or 6k-1. I would have liked to have implemented this in the program.
