## The Purpose of this project is to write functions to cache expensive computing operation of 
## calculating inverse of a matrix using the concepts of Lexical Scoping

## function1: makeCacheMatrix
## Creates a "Special" Matrix which is a list containing functions
## 1.set value of a Matrix
## 2.get value of a matrix
## 3.set value of inverse
## 4.get value of inverse

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

## function2:cacheSolve
##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse
##has already been calculated (and the matrix has not changed), then the cachesolve retrieves the inverse from the cache
## if not it calculates the inverse.

cacheSolve <- function(x=matrix(), ...) {
## returns the inverse of matrix
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
