## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#This function, makeCacheMatrix gets a matrix as input
#   set the value of the matrix 
#   get the value of the matrix 
#   set the value of the inverse matrix
#   get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	setMatrix<-funcyion(y) {
	 x<<-y
	 m<<-NULL
	}
      getMatrix <- function() x
      setInv <- function(inverse) m <<- inverse
      getInv <- function() m
      list(setMatrix = setMatrix, getMatrix = getMatrix,
      setInv = setInv,
      getInv = getInv )
}


## Write a short comment describing this function

#The following function calculates the inverse of the matrix created
#with the above function. However, it first checks to see if the inverse matrix
#has any value in it. If not so, it gets the original matrix data from 
# and set the invertible  matrix by using the solve function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   	      m <- x$getInv()
            if(!is.null(m)) {
                    message("getting cached matrix")
                    return(m)
            }
            data <- x$getMatrix()
            m <- solve(data, ...)
            x$setMatrix(m)
            m
}
