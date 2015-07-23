## These function are set up to display a special matrix according
#to the way you have set it up after calling both function, once your function has been run 
# the second function will use the infromation(matrix) that you have handed over 
# and inverse the oldmatrix.

## In this functon makeCacheMatrix is set up to use the matrix that you will set up 
#after running it and display your matrix accordingly. For example after running this
#function in the console, assign "hand <- makeChaceMatrix (matrix (1:4, 2,2))", then run "hand" 
#this will return what i like to call a preview of your function, and you will see the oldmatrix 
# is a 2x2 matrix with data in from 1-4.To just see your oldmatrix run "hand$oldmatrix".

makeCacheMatrix <- function(x = matrix()) {
  reversematrix<<- NULL
  
  set<- function(a){
    reversematrix<<-a
  }
  
  get<- function(){
    reversematrix
  }
  
  oldmatrix<<- x
  
  return(list(oldmatrix = oldmatrix, set = set, get = get))

}


## With this function we inverse the oldmatrix created above by entering the 
#following into the console, above we assigned our first function with the name hand
#now run the below function using hand: cacheSolve(hand) this function will now take hand and
# inverse the matrix

cacheSolve <- function(y, ...) {
  if(is.null(y$get())){
    
    solvey <- solve(y$oldmatrix)
    y$set(solvey)
    return(y$get())
  }
  else{
    return(y$get())
  }
}
