msg = "hello to R world"

print(msg)
length(msg)
substr(msg, 3, 6)
strsplit(msg, " ")
sub("to", toupper("to"), msg, fixed =  T)
nchar(msg)
stringr::str_length(msg)
toupper("hello")
tolower("HELLO")
paste("one","two","three" )
paste("one","two","three", sep = "_" )
paste0("one","two","three")
paste(c("one","two"), collapse = "EE")
paste0(c("one","two"), collapse = "EE")
stringr::word(msg,1)
stringr::word(msg,-1)
strrep("wow",3)
stringr::str_detect(msg, "to")


