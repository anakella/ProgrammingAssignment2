## The Purpose of this project is to write function to cache expensive computing operation of 
## calculating inverse of an matrix using the concepts of learned under Lexical Scoping

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
