#vector datatype demo

product1 <- c(1, 2, 3, "hello")
product1
typeof(product1)
class(product1)
is.vector(product1)
is.list(product1)


#ways of creating vectors

#using c() function
vec <- c(1, 2, 3)
vec

#using as.vectore() function
x <-  c(4, 5, 6)
vec <- as.vector(x)
vec

#using : colon operator
vec <- 1:5
vec

#using seq() funtion
vec <- seq(1, 6, by <- 2)
vec

vec <-
  seq(1, 6, length.out <- 5)   # by <- ((to - from)/(length.out - 1))
by <- (6 - 1) / (5 - 1)
by
vec


#Accessing vector eleents
vec <- c(1:4)
vec.withnames <- c("one" <- 1, "two" <- 2, "three" <- 3, "four" <- 4)

#by index
vec[2]

#by name
vec.withnames["two"]

#Vector Operations

#contactenating vectors

vec1 <- 1:3
vec2 <-  4:6

vec3 <- c(vec1,vec2)
vec3

vec1
vec2

#adding vectors
vec1 + vec2

#subtraction
vec1 - vec2

#Logical vectors

vec1 <- c(1,2,3,4)
vec2 <- c(T,F,T,F)

vec3 <- vec1[vec2] #only returns those elements where vec2 has T
vec3

#access negative index
vec1[2]
vec1[-2]  #returns ll value except value at index 2
vec1[10] #out of bound index
vec1[1:2]


#naming vector elements
stud_grades <- c("B", "A+", "A", "B-")
names(stud_grades) <- c("Rama", "Akhilesh", "Pooju", "Namo")

stud_grades
stud_grades["Akhilesh"]


stud_marks = c(50,40,60,70,90,80)
stud_marks[stud_marks > 70]

sort(stud_marks)
order(stud_marks)
rank(stud_marks)
max(stud_marks)
which.max(stud_marks)

vec1
vec1 <- append(vec1, 5)
vec1































