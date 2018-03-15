# Theory-Of-Algorithms-CA
# Problem 5 : Hamming Weight


Write a function hamming-weight in Racket that takes a list $l$ as input and returns the number of non-zero elements in it.
For example:
> (hamming-weight (list 1 0 1 0 1 1 1 0))

Hamming weight involves recuring over a list of elements and asking 2 questions :
* if l is null
* if the car of l is 1

if it is then 1 is added to the weight and the recursion continues
if not then nothing is added and again, recursion continues.



