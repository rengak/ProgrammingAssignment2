## Put comments here that give an overall description of what your
## functions do

## This Function has four subfunctions set(),get(),setinverse(),getinverse()

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
       	setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## This function computes inverse if a new matrix is fed and sets the value to cache, else reads the value from cache

cacheSolve <- function(x, ...) {
	i <- x$getinverse()
	if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
	data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i      
}


