#character data type

ch <- 'a'
ch
class(ch)
typeof(ch)


str <- "Hello"
str
class(str)
typeof(str)

str1 <- 'Hello'
str1
class(str1)
typeof(str1)


str2 = as.character("hello")
str2
class(str2)
typeof(str2)


#charater functions

result = grep("Dave", c("Rama", "Jordan", "Dave", "Sofia"), T)
result

txt = "This is a long long string."
result = grep("long", txt, T) 
result

grep("A", c("b", "A", "c"), fixed = TRUE)




