# Theory-Of-Algorithms-CA
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

