## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


#This is a simple function to set the values of a matrix
makeCacheMatrix <- function(x = matrix()) {
  invs <- NULL
  set <- function(y) {
  x <<- y
  invs <<- NULL
  }
  get <- function() x
  setinvs <- function(inverse) invs <<- invs
  getinvs <- function() invs
  list(set = set, get = get,
       setinvs = setinvs,
       getinvs = getinvs)

}


## Write a short comment describing this function

#This is a function to Solve for the inverse of a matrix and store it in cache
cacheSolve <- function(x, ...) {
         i <- x$getinvs()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinvs(i)
  i
        ## Return a matrix that is the inverse of 'x'
}
