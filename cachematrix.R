## Put comments here that give an overall description of what your
## functions do

## Function that make a cached of the input matrix
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}

## Get the solve of the cached matrix
cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
    return(m)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
