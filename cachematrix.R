## create a special matrix object that can cache its inverse
## it uses a superassignment operator <<- to assign a value to a variable that's outside the environment the function
# is defined.


## return a list of 4 operations: set, get, setInverse, and getInverse
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    
    get <- function() x  # return the original matrix
    setInverse <- function(newMatrix) inv <<- newMatrix  #sets inv to the new inverse matrix
    getInverse<- function() inv # return the inverse matrix
    
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse) # each element in the list contains a function.

}


## if inv is not null, return the cached data.  If it's null, compute
## the inverse and assign it to inv.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()
    
    if (!is.null(inv)) { #inverse matrix exists
        message("getting cached data")
        return(inv)
    }
    
    data <- x$get()
    inv <- solve(data, ...) # compute the inverse matrix and assign it to inv
    x$setInverse(inv)
    
    inv
}
