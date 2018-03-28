

# Theory-Of-Algorithms-CA
# Problem 10 : lstq


10. Write a function lstq in Racket that takes as arguments two lists l and m of equal length and containing numbers. It should return d, the distance given by the sum of the square residuals between the numbers in the lists:

d =  e(Li − Mi)*2
This means take the ith element of m from the ith element of l and square the result for all i. Then add all of those to get d. For example:
> (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
54.61


This problem was solved through 2 helper functions. The algorithm for this can be broken down into 3 steps :
* Iterate over L and M to get L*i* and M*i*
* Take M*i* from L*i* and square the result
* Sum the square residuals returned from steps 1 and 2

