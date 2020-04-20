#read XML file
#insall XML package : install.packages("XML")
#load the package : library(XML)


xml_data <- xmlToDataFrame(file.path(getwd(), "data_files", "students_xml.xml"))
xml_data