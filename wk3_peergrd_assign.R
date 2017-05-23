#### R Programming Peer Graded Assignment  ####
## This function creates a special "matrix" object that can cache its inverse.

## example ##
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



makeCacheMatrix <- 