#array examples

#creation of array

# arr = array(1:18, dim = c(2,3,3))
# arr

quantity_store_A = c(7, 5, 3, 6, 9, 4)
quantity_store_B = c(2, 5, 6, 4, 8, 3)
quantity_store_C = c(4, 5, 2, 1, 8, 3)

quantity_store_A
quantity_store_B
quantity_store_C

store_quantity <-
  rbind(quantity_store_A, quantity_store_B, quantity_store_C)
colnames(store_quantity) <-
  c("apple", "cookie", "lemon", "pizza", "banana", "orange")
store_quantity

# rowSums(store_quantity)
# colSums(store_quantity)

store_quantity_day1 <- store_quantity
store_quantity_day2 <- store_quantity * 2

shopping_date <-
  array(c(store_quantity_day1, store_quantity_day2), dim = c(3, 6, 2))
shopping_date

colnames(shopping_date) <-
  c("apple", "cookie", "lemon", "pizza", "banana", "orange")
rownames(shopping_date) <- c("store A", "store B", "store c")
dimnames(shopping_date) <- list(rownames(shopping_date),
                                colnames(shopping_date),
                                c("Day1 Sale", "Day2 Sale"))

shopping_date


#find day1 sale of lemon from each store
shopping_date[, "lemon", 1]

#find day2 sale of store A  (by names or index)
shopping_date["store A", , "Day2 Sale"]
#shopping_date[1, , 2]

#totoal sale of each store on day2
rowSums(shopping_date[,,2])


