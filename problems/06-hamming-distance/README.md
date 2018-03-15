# Theory-Of-Algorithms-CA
# Problem 6 : Hamming Distance


Write a function hamming-distance in Racket that takes two lists and returns the number of positions in which differ.
For example:
> (hamming-distance (list 1 1 1 1 0 0 0 0) (list  1 0 1 0 1 1 1 0))
5

The hamming-distance is a similar algorithm to the hamming-weight. Infact it is almost identical with one major change.
Rather than taking in 1 list and checking if an atom is 1 or 0, we are taking in 2 lists and checking if their respective atoms are the same.

There are 3 test cases in this show different outcomes including a zero outcome.


