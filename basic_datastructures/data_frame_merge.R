# Make a data frame mapping story numbers to titles
stories <- read.table(header=TRUE, text='
   book_id  title
    1       Java
    2      Python
    3       R_Code
')

# Make another data frame with the data and story numbers (no titles)
data <- read.table(header=TRUE, text='
    subject book_id value
          Java_Prog 1 90
          Java_Theory 1 75
          Python_Prog 2 95
          Python_Theory 2 80
          R_Prog  3 75
')

# Merge the two data frames
merge(stories, data, "book_id")



#Merge=ing on different colomn names
book_names = read.table(header = T, text = '
                        bookid  coding
                        101 java
                        102 python
                        103 go
                        104 Ruby')
book_names

book_authors = read.table(header = T, sep = "\t",  text = '
                          bookid  name  author
                          101 Java Programming Chris
                          102 Pythong Programming Lewis
                          103 Go Lang Dave
                          104 Ruby On Rails Robert')

book_authors

book_details <- merge.data.frame(book_names, book_authors,
                                  "bookid")

book_details



df1 = read.table(header = T,
                 text = '
                 bookid bookname
                 101  Java
                 102  Python
                 ')

df2 = read.table(
  header = T,
  text = '
                 bookid subject price
                 101  "Java_Programming"  "$199"
                 102  "Python_Programming"  "$255"
                 '
)

df1
df2

df3 <- merge.data.frame(df1, df2, "bookid")
df3


#merge with different column names
df1 = read.table(header = T,
                 text = '
                 bookid bookname
                 101  Java
                 102  Python
                 103  Go
                 ')

df2 = read.table(
  header = T,
  text = '
                 id subject price
                 101  Java_Programming $199
                 102  Python_Programming $255
                 104  Ruby_On_Rails $99
                 '
)

df1
df2

df3 <- merge.data.frame(x = df1,
                        y = df2,
                        by.x = "bookid",
                        by.y = "id",
                        all = T)
df3



