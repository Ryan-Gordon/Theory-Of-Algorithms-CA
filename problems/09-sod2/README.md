

# Theory-Of-Algorithms-CA
# Problem 9 : sod2


9. Write a function sod2 in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing a 1 where the number of 1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise. For example:
> (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 1 1 0 1 0 0 1)

This problem is solved, like the last 2 problems, using the map keyword. problems 7 and 8 focused on the amound of non zero elements and the values of x respectively. This problem combines the two in a sense. Solving the problem is done by summing each iteration of the list and then checking the remainder of this with modulo. If the sum ends up odd, we can assume there is an odd number of 1's in this place on the list.


