## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# this funtion creates a list containing functions to
# set the value of the matrix: set()
# get the value of the matrix: get()
# set the value of inverse of the matrix: setinverse()
# get the value of inverse of the matrix: getinverse()

makeCacheMatrix <- function(x = matrix()) {
  inv_matrix <- NULL
  set <- function(y) {
    x <<- y
    inv_matrix <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv_matrix <<- inverse
  getinverse <- function() inv_matrix
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)  
}


## Write a short comment describing this function
#retuen inverse of the matrix, and caches it for later use

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv_matrix <- x$getinverse()
  if(!is.null(inv_matrix)) {
    message("getting cached data.")
    return(inv_matrix)
  }
  matrix <- x$get()
  inv_matrix <- solve(matrix)
  x$setinverse(inv_matrix)
  inv_matrix
}
