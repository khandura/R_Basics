#read XLS, XLSX files
#insall Excel package : install.packages("XLConnect")
#load the package : library(XLConnect)

path <- file.path(getwd(), "data_files", "student_xl_ds1.xlsx")
  print(path)

exl_data <- readWorksheetFromFile(path, sheet = 1)
exl_data

sheet2 = readWorksheetFromFile(file.path(getwd(), "data_files", "student_xl_ds1.xlsx"),
                               sheet = "Project Data" )
sheet2


#using readxl package
#install.packages("readxl")
#library(readxl)

sheet1 = read_excel(path)
sheet1


sheet2 = read_excel(path, sheet = "Project Data")
sheet2
