# Theory-Of-Algorithms-CA
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
