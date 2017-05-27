#### R Programming Peer Graded Assignment  ####
#### This function creates a special "matrix" object that can cache its inverse. ####

#### example ####
makeVector <- function(x = numeric()) {
                          m <- NULL
                          set <- function(y) {
                            x <<- y
                            m <<- NULL
                          }
                          get <- function() x
                          setmean <- function(mean) m <<- mean
                          getmean <- function() m
                          list(set = set, get = get,
                               setmean = setmean,
                               getmean = getmean)
}

#### example 2 ####
power <- function(exponent) {
      function(x) x ^ exponent
    }

square <- power(2)
square(2) # -> [1] 4
square(4) # -> [1] 16

cube <- power(3)
cube(2) # -> [1] 8
cube(4) # -> [1] 64


makeCacheMatrix <- function(x = matrix() )
    {#configure the matrix x,y
              {myinverse = NULL  #default value for inverse
                b = function(y)
                  {x<<-y    # see scoping notes
                   inverse<<- NULL
                  }
              }
          a <- function()x 
          b = function(inverse) invr <<- inverse
          c <- function() invr
          invlist(set=set, a=a, b=b, c=c)
    }
    
invResult <- function(x,...) 
   {
  invr <- x$c() # scoping assignment used line 41
    
    mxData <- x$a() # assign data set
    invr <- solve(mxData)  # solve invr scope for mxData
    x$b(invr)
    invr
    }