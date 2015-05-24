## Function name: makeCacheMatrix
## 
## Argument: x is an object type Matrix
## 
## Purpose: function that defines & returns a list of four functions
##  Function to get the matrix from cached memory object
##  Function to set the matrix into memory cache
##  Functions to set (setInverse) and get (getInverse) the cached matrix inverse

makeCacheMatrix <- function(x = matrix()) {



	## initialize the matrix
 	m <- NULL
  
  	## Set the value of the global cached object - the matrix to be inversed
  	## Initialize the global cached matrix inverse object to null
  
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


## Function checks to see if the Matrix Inverse is available in cache
## or else the function computes and sets the inversed matrix into cached object in memory.
##
## Function Argument: List of four functions returned by the makeCacheMatrix function above
##

cacheSolve <- function(x, ...) {

 	## NOTE: Changed the logic from the sample code to reflect a proper if and else structure and check for null object
	## Get the cached Matrix object by calling getInverse
  	## Check if the object has been cached - object is null or not
  	## If the object is null (not in the cache), compute the matrix inverse using solve function and 
  	## store it in global cache by calling setInverse

  	m <- x$getInverse()
  	if(is.null(m)) {
      		data <- x$get()
      		m <- solve(data, ...)
      		x$setInverse(m)   
  	} else {
    		## if the cached inversed matrix is not null, print out the message that the object is being returned from the cache    ##
      		message("getting cached data")
    
  	}

  	## return the computed & cached matrix inverse of the matrix
  	return (m)
        
}
