## Put comments here that give an overall description of what your
## functions do

## This function checks if the matrix was already inverted

makeCacheMatrix <- function(x = numeric()) {
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


## This function is called to invert a matrix

cacheSolve <- function(x) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(solve) m <<- solve
        getinv <- function() m
        lst<-list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
	makeCacheMatrix(lst)	
        ## Return a matrix that is the inverse of 'x'
}
