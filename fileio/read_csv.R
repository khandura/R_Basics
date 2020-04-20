#read csv

#read from current working directory
students <- read.csv("stud_ds1.csv", header = T , sep = ",")
students



#read file from different directory under working directory
path <- file.path(".", "data_files", "students_ds1.txt")
students = read.csv(path, T, sep = ",")
students

students <-
  read.csv(file.path(getwd(), "data_files", "students_ds1.csv"), T, ",")
students


#read file from dirctory outside the project
path <- file.path("C:/Users/akhi3/Desktop/file", "stud_ds1.csv")
students = read.csv(path, T, sep = ",")
students


#select file maunally by popoulating select pop-up
# students <- read.csv(file.choose(), header = T, sep = ",")
# students


#read file with manually provided column names
students <- read.csv(file.path(getwd(), "data_files", "students_ds1.csv"),
                     col.names = c("Name", "Lanuguage"))
students






