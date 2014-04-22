## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL    # inverse initialization
  set <- function(y) {    # set the matrix
    x <<- y
    inv <<- NULL   # invalidte the cache
  }
  get <- function() x    # get the matrix
  setinv <- function(inverse) inv <<- inverse    # set the inverse
  getinv <- function() inv    # get the inverse
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getinv()    # retrieve inverse from the cache
  if (!is.null(inv)) {    # if it is in the cache
    message("getting cached data")
    return(inv)    # return inverse
  }
  matr <- x$get()    # if not, retrieve the matrix
  inv <- solve(matr, ...)    # calculate the inverse
  x$setinv(inv)    # cache the inverse
  inv    # return the inverse
}
