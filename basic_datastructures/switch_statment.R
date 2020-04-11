num = 10
num1 <- as.character(ifelse(num > 0, 1 , ifelse(num == 0, 0,-1)))
num1

msg = switch(num1,
             "1" = "positive" ,
             "0" = "Zero" ,
             "-1" = "Negative" ,
             "Not Valid")

msg