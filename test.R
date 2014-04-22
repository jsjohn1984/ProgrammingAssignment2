mat <- makeCacheMatrix(matrix(runif(256), nrow = 16))
matr <-mat
cacheSolve(matr)

matr$set(matrix(runif(256), nrow = 16))
cacheSolve(matr)

matr