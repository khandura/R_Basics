#function without argument

GreetUser <- function() {
  print("Good morning!")
}


#single argument with default value
GreetUserWithName <- function(msg = "User") {
  paste("Have a good day! ", msg)
}


GreetUser()

GreetUserWithName()

GreetUserWithName("Clonel")


#multiple argument function
GreetUserWithNameAndPlace <- function(name, place = "Zurich") {
  paste("Hello", name, ", welcome to", place)
}

GreetUserWithNameAndPlace("Akhilesh")

GreetUserWithNameAndPlace("Dave", "London")

GreetUserWithNameAndPlace(place = "Ney York", "Robert")


ShowUserDetails <- function(username , age, sex, country) {
  print("4 argument funtion")
  
  paste("Name : ", username ,
        "Age : ", age,
        "Sex : ", sex,
        "Country : ", country)
  
}

ShowUserDetails("Akhilesh", 31, "Male", "India")

#will throw error as we are accessing the parameter isnide method
#R function doesn't check the number of arguments
ShowUserDetails("Rama", 31, "Male")
