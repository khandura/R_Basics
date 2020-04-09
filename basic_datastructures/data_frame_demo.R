#Dataframe demo

#create data frame

products <- c("fruits", "veggies", "drinks")
availibilty <- c(T, F, T)
quantity <- c(100, 0, 50)

dataset <- data.frame(
  products,
  availibilty,
  quantity,
  row.names = c("product1", "product2", "product3"),
  stringsAsFactors = F
)
str(dataset)
dataset

#DF is type of list and class of data.frame
#typeof(dataset)
#class(dataset)

#access data
#get 1st row 2nd column data
dataset$products[2]
dataset[[1]][2]

#access 2nd row data
dataset$availibilty
dataset[[2]]

#get data for first two rows and all columns
dataset[1:2, ]

#get data for first and third rows and first and second columns
dataset[c(1, 3), 1:2]



#dataframe of enequal length vectors

items <- c("fuits", "veggies", "drinks")
availibilty <- c(T, T)
quantity <- c(100, 50)

# #daatframe must have same length vectore for each row and column
# dataset <- data.frame(
#   items,
#   availibilty,
#   quantity,
#   row.names = c("product1", "product2", "product3"),
#   stringsAsFactors = F, fix.empty.names <- T
# )
# #str(dataset)
# dataset


dataset

#add new column to datafrmae
dataset$payment <- c("cash", "card", "card/cash")
dataset[["category"]] <- c("a", "b", "c")

dataset


#rename the column name
names(dataset)[names(dataset) == "category"] <- "CATEGORY"
dataset


#create dataframe through read.table

dataset = read.table(header = T,
                     text = '
                     subject storyid rating
                     Eng  1 6
                     Hindi 2 5.5')

dataset



#merge data frames

# prog_books_id <-  read.table(header = T,
#                              text = '
#                              "book.id" "book.name"
#                              1 Java
#                              2 "R Prog"
#                              3 Python
#                              4 C++')

prog_books <- c("Java", "Python", "R Prog", "C++")
prog_book_id <- c(1, 3, 2, 4)
prog_books_id <-  data.frame(prog_books,
                             prog_book_id,
                             stringsAsFactors = F)
names(prog_books_id) = c("book.name", "book.id")


prog_books_id


prog_books_rating = read.table(
  header = T,
  text =
    '"book.id" "book.rating" "book.author"
                               1 8.2 "Java People"
                               2 9 "R People"
                               3 7.8 "Python People"
                               4 7 "C++ People"
                               1 6 "Java Head"
        '
)

prog_books_rating

prog_book_details <- merge(prog_books_id, prog_books_rating, "book.id" )

prog_book_details
