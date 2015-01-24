## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setinv(m)
        m
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function() m <<- mean
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

        ## Return a matrix that is the inverse of 'x'
}
