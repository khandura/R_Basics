#List examples

#creation of list

list <-  list("Akhi", 123, c(70, 80, 90))
list

#assigning names to list items 
names(list) <- c("Name", "ID", "Marks")
str(list)

#accessing elements
list["Marks"]
list$Name 

#modifing elements
list["Name"] <- "Akhilesh"
list$Name 

num_list <- list(1,2,3,4,5)
day_list <- list("Mon","Tue","Wed", "Thurs", "Fri")
merge_list <- c(num_list, day_list)
merge_list


#convert list to vector
num_list = list(1:5, c("A","B","C"))
str(num_list)
paste("num_list is list : ", is.list(num_list))
paste("num_list is vector : ", typeof(num_list))
list_to_vec = unlist(num_list)
str(list_to_vec)
paste("list_to_vec is list : ", is.list(list_to_vec))
paste("list_to_vec is vector : ", typeof(list_to_vec))

num_list[1]
num_list[[1]]

list <-  list("Akhi", 123, c(70, 80, 90))
names(list) <- c("Name", "ID", "Marks")
str(list)
list["Name"] <- "Ramprasad"
list
list["Salary"] <- as.integer(100000)
list



vec <- c(1:4)
str <- c('Joy', 'Peace', 'Long-suffering', 'Love')
make_list <- list(vec, str)
names(make_list) <- c('vector', 'string')
str(make_list)
length(make_list[2])
make_list[[2]] <- c('God', 'Jesus', 'Holy Spirit', 'Love')
str(make_list)



list <-  list("Akhi", 123, c(70, 80, 90))
names(list) <- c("Name", "ID", "Marks")
str(list)
list[[3]][]>70