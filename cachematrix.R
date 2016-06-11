## This assignment is about finding inverse of the matrix and solving it 
## only when it is necessary otherwise taking it from the stored value
## This will result in less processing and fast work

## This function creates a matrix and making a cachematrix which can store 
## the inverse value of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  setmatrix <- function(y) {
    x <<- y
    inv <<- NULL
  }
  getmatrix <- function() x
  cacheinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getminverse = getinvers)
}




## This function calculates the inverse of the matrix and in case if matrix is
## not being changed, it takes the value of the cached matrix from the 
## above function and store it.

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setinverse(inv)
  inv
  ## Return a matrix that is the inverse of 'x'
}


