## create a special matrix object that can cache its inverse


## return a list of 4 operations: set, get, setInverse, and getInverse
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    
    get <- function() x
    setInverse <- function(newMatrix) m <<- newMatrix
    getInverse<- function() m
    
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## if m is not null, return the cached data.  If it's null, compute
## the inverse an assign it to m.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    
    if (!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    
    data <- x$get()
    m <- solve(data, ...)
    x$setInverse(m)
    
    m
}
