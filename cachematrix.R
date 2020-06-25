## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  nvs <- NULL
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
