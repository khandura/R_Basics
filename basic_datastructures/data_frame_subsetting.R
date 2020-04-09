student_names <- c("Akhilesh", "Rajiv", "Sumit")
student_maths_marks <- c(85, 80, 90)
student_accounts_marks <- c(80, 75, 95)


student_marks <- list(student_maths_marks, student_accounts_marks)

names(student_marks) <- c("Maths_Marks", "Accounts_Marks")

student_stream <- c("MCA", "BCOM", "CA")

student_data <-
  data.frame(student_names,
             student_marks,
             student_stream ,
             stringsAsFactors = F)

print(student_data)

student_data$student_names
student_data[student_stream == "MCA", ]
student_data[ student_data$Maths_Marks > 80 & student_data$Accounts_Marks > 85, ]
