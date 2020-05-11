## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
##you have to empty the matrix
        
        set <- function(y){
                x<<-y
                inv<-NULL
        }
##the set function to assign the matrix value
        get <- function () x
##retreive the matrix
        setinverse<-function(inverse) m<<-inverse
##I set the inverse matrix if any
        getinverse<- function () m
##retreive the inverse matrix
        list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)
}
##print the function list

## Write a short comment describing this function
##
cacheSolve <- function(x,...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
##gets the inverse matrix if any
        if(!is.null(m)){
                message("getting cached data")
                return(m)
##if the inverse matrix is here, it is printed
        }
        matrix<-x$get()
        inv<-solve(matrix)
        x$setinverse(inv)
        inv
##I get the original matrix, inverse it and then assign the value to inv
}
