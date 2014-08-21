## functions to cache the inverse matrix

## create cache matrix

makeCacheMatrix <- function(x = matrix()) {
y <- NULL
  set <- function (matrix){
    x<<- matrix
    y<<-NULL
  }
  get <- function() x
  setinverse <- function(inverse)
    y<<- inverse
  getinverse<- function() y
  list(set= set, get= get, setinverse= setinverse, getinverse= getinverse)


}


## function to cache inverse matrix and calculate the inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        y <- x$getinverse()
  if(!is.null(y)){
    message("getting cached data")
    return(y)
  }
  data <- x$get()
  y<-solve(data, ...)
  x$setinverse(y)
  y
}
