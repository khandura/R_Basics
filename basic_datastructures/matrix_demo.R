#create matric using matrix funtion

mat = matrix(c(1, 2, 3, 4, 5, 6))
mat

mat = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2)
mat

mat = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 2)
mat

mat = matrix(, nrow = 2, ncol = 2)
mat

# mat = as.matrix(x = c(1, 2, 3, 4, 5, 6))
# mat

row_names = c("Row1", "Row2", "Row3")
col_names = c("Col1", "Col2", "Col3")
mat = matrix(
  c(1, 2, 3, 4, 5, 6, 7, 8, 9),
  nrow = 3,
  ncol = 3,
  dimnames = list(row_names, col_names)
)
mat

mat[1, 2]  #print 1st row 2nd col
mat[1,]  #print 1st row all elements
mat[, 2]  #print 2nd col all elements
mat[, ]    #print all rows n cols

# mat = matrix(c("Jan", "Feb", "Mar", "Apr"),c(31, 28, 31, 30),
#              nrow = 2 , byrow = T)
#
# mat
# rownames(mat) <- c("January", "February", "March", "April")
# colnames(mat) <- c("Days in Jan", "Days in Feb", "Days in Mar", "Days in Apr")


row_names = c("Row1", "Row2", "Row3")
col_names = c("Col1", "Col2", "Col3")
mat = matrix(
  c(1, 2, 3, 4, 5, 6, 7, 8, 9),
  nrow = 3,
  ncol = 3,
  dimnames = list(row_names, col_names)
)
mat

mat[1, 2] <- 44
mat

mat[mat > 7]
mat + 4

#add new column to matrix
mat <- cbind(mat, c(11, 12, 13))
colnames(mat) <- append(col_names, "Col4")
mat

#add new row to matrix
mat <- rbind(mat, c(21, 22, 23, 24))
rownames(mat) <- append(row_names, "Row4")

mat

# dim(mat) <- c(2,8)
# mat


#Transpose a matrix
t(mat)


#addition / subtraction of matrces
mat1 = matrix(1:6, nrow = 2)
mat1

#addition by constnat
mat1 + 10

#subtraction by constant
mat1 - 10

#multiplication by contant
mat1 * 10


mat2 = matrix(10:15, nrow = 3)
mat2

dim(mat1)
dim(mat2)

mat1
mat2

mat1 %*% mat2

#multiplication of 2 matrices with incompatible arguments
x <- matrix(1:9,nrow=3)
y <- matrix(c(1,2,3))
x
y
dim(x)
dim(y)
x%*%y




vec1 = c(1:6)
vec2 = c(11:16)

row_names = c("Row1", "Row2")
col_names = c("Col1", "Col2", "Col3")
matrix_names <- c("Matrix1", "Matrix2")


arr <-
  array(
    c(vec1, vec2),
    dimnames = list(row_names, col_names, matrix_names),
    dim = c(2, 3, 2)
  )

arr

#find sum of each row accross the matrices
apply(arr, 1, sum)

#find sum of each olumnaccross the matrices
apply(arr, 2, sum)

#find sum of each row and column accross the matrices
apply(arr, c(1,2), sum)








