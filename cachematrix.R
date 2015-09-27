## goal is to write a pair of functions that cache the inverse of a matrix.


## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

}


## The cacheSolve function below computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed),
## then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

## look at example from assignment
## makeVector <- function(x = numeric()) {
##m <- NULL
##set <- function(y) {
##  x <<- y
##  m <<- NULL
##}
##get <- function() x
##setmean <- function(mean) m <<- mean
##getmean <- function() m
##list(set = set, get = get,
##     setmean = setmean,
##     getmean = getmean)
##}


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) m <<- inv
  getinverse <- function() m
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
}


## Calculate the inverse of the special "matrix" created with the above
## function, reusing cached result if it is available

## look at example from sample
##cachemean <- function(x, ...) {
##  m <- x$getmean()
##  if(!is.null(m)) {
##    message("getting cached data")
##    return(m)
##  }
##  data <- x$get()
##  m <- mean(data, ...)
##  x$setmean(m)
##  m
}

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}