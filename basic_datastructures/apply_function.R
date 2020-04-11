mymatrix = matrix(
  c(1:5, 6:10, 11:15),
  nrow = 5,
  ncol = 3,
  dimnames = list(
    c("row1", "row2", "row3", "row4", "row5"),
    c("col1", "col2", "col3")
  )
)
mymatrix

#apply functions
#find some of each row, returns vector
tmat <- apply(mymatrix, 1, sum)
class(tmat)
typeof(tmat)

#sum of each column
tmat <- apply(mymatrix, 2 , sum)
class(tmat)
typeof(tmat)

#add 5 to each row, returns matrix
tmat <- apply(mymatrix, 1:2,  function(x)  x+5)
class(tmat)




#sapply function
vec <- 1:5
sapply(vec, function(x) x+2)

#lapply, returns a list always
lapply(vec, function(x) x*2)


