## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        matrx <- NULL
        set <- function(y) {
                x <<- y
                matrx <<- NULL
        }
        get <- function() x
        setMatrix <- function(m) matrx <<- m
        getMatrix <- function() matrx
        list(set = set,
             get = get,
             setMatrix = setMatrix,
             getMatrix = getMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      mat_local <- x$getMatrix()
      if (!is.null(mat_local)) {
              message("getting cached data")
              return(mat_local)
      }
      mat <- x$get()
      mat_local <- solve(mat, ...)
      x$setMatrix(mat_local)
      mat_local
}
