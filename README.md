
### Assignment 3: Caching the Inverse of a Matrix

This repository contains three files:  
1. README.md  - contains info on what the assignment is about and an explanation of the other two files in the repository  
2. runs.md - shows the results of running the functions (makeCacheMatrix and cacheSolve) in R Studio using a 2X2 matrix and a 4X4 matrix  
3. cachematrix.R - the source code that contains the two functions

### Excerpt of the README file from the instructor:  
Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix  
rather than computing it repeatedly (there are also alternatives to matrix inversion that we will    
not discuss here). Your assignment is to write a pair of functions that cache the inverse of a matrix.  

Write the following functions:  

1.  `makeCacheMatrix`: This function creates a special "matrix" object that can cache its inverse.    
2.  `cacheSolve`: This function computes the inverse of the special "matrix" returned by `makeCacheMatrix` above.   
If the inverse has already been calculated (and the matrix has not changed), then `cacheSolve` should retrieve the inverse 
from the cache.  