### A testing using a 2X2 matrix

> amatrix <- makeCacheMatrix(matrix(c(1,2,3,4), nrow=2))  
> amatrix$get()  
     [,1] [,2]  
[1,]    1    3
[2,]    2    4
> cacheSolve(amatrix)
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
> amatrix$getInverse()
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
> cacheSolve(amatrix)
getting cached data
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5

### Testing sing a 4X4 matrix

> set.seed(55)
> amatrix<- matrix(sample.int(100,size=16,replace=TRUE), nrow=4)
> m <- makeCacheMatrix(amatrix)
> m$get()
     [,1] [,2] [,3] [,4]
[1,]   55   57   51   31
[2,]   22    8    9   33
[3,]    4   14   89   47
[4,]   80   30    7   77
> c <- cacheSolve(m)
> c
             [,1]       [,2]        [,3]        [,4]
[1,] -0.021487699 -0.2236382  0.02805644  0.08737048
[2,]  0.043010130  0.2279450 -0.04060058 -0.09022431
[3,] -0.009180897 -0.1067323  0.02458177  0.03443415
[4,]  0.006402315  0.1532446 -0.01556585 -0.04576556
> m$getInverse()
             [,1]       [,2]        [,3]        [,4]
[1,] -0.021487699 -0.2236382  0.02805644  0.08737048
[2,]  0.043010130  0.2279450 -0.04060058 -0.09022431
[3,] -0.009180897 -0.1067323  0.02458177  0.03443415
[4,]  0.006402315  0.1532446 -0.01556585 -0.04576556
> cacheSolve(m)
getting cached data
             [,1]       [,2]        [,3]        [,4]
[1,] -0.021487699 -0.2236382  0.02805644  0.08737048
[2,]  0.043010130  0.2279450 -0.04060058 -0.09022431
[3,] -0.009180897 -0.1067323  0.02458177  0.03443415
[4,]  0.006402315  0.1532446 -0.01556585 -0.04576556