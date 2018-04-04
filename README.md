# Theory-Of-Algorithms-CA


#Project Description

# Solution design 

About 1/4 way through the year I began to read the material book The Little Schemer which was provided by the lecturer. After reading the first few chapters numerous times I formed a began to structure my solutions trying my best to follow the Commandments and Laws outlined in the book.   
As a result most of the solutions make heavy use of the `cond` key word which is used to ask questions.  
The first question asked in most solutions depends on whether we need to recur over a list of atoms or recur over a number. In the case of a list, ask two questions 
```
	(null? l) and else
```  
In the case of a number ask two questions :
```
	(zero? n) and else
``` 


## Learning Outcomes 
Some might say this modules outcomes are learning functional programming, learning about Turing machines; however I think the biggest learning outcome from this module is learning to think recursively as the concept of recursion plays a part in some of the most efficient algorithms.  




# Explanation of problems :

Each problem has its own folder and inside each is a README outlining the problem and some comments on the solution. 

Here is a paste of these READMES for ease of reading : 


# Conclusion
I found learning Scheme/Racket to be interesting once I got over the initial bump. One of the hardest challenges I had to overcome was the large amount of brackets used in Scheme and I often found myself just adding loads of ')' brackets at the end of my function which ended up causing problems sometimes. My solution for this was to try and structure my code similar to python with each line indented appropriately.