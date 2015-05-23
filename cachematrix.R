## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

## Function name: makeMatrix
## 
## Argument: object type of Matrix
## 
## Purpose: function that defines & returns a list of four functions
##  Function to get the matrix from Cached memory object
##  Function to set the matrix into memory cache
##  Functions to set (setInverse) and get (getInverse) the cached Matrix Inverse

	## initialize the matrix
 	m <- NULL
  
  	## Set the value of the global cached object - the matrix to be inversed
  	## set the value of the global Cached Matrix Inverse object to null
  
  	set <- function(y) {
   	 	x <<- y
    		m <<- NULL
  	}
  
  	## get the cached matrix - the matrix to be inversed
  
  	get <- function() x
  
  	## set the global cached matrix inverse object with the given object
  	setInverse <- function(MatrixInverse) m <<- MatrixInverse
  
  	## return the stored global cached matrix inverse 
  	getInverse <- function() m
  
  	## retrun the list of the four functions defined above
  	list(set = set, get = get,
       	setInverse = setInverse,
       	getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
