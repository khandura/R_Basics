#install and load tidyr package, to foramt data into better readble and anlysis format

#through basic data frame

population_data <-
  read.csv(
    file.path(getwd(), "data_files", "india_population_chart.csv"),
    check.names = F,
    quote = "\"'" ,
    stringsAsFactors = F 
    )
population_data

#get the delhi population is 2010

complete_delhi_data <-
  population_data[population_data$City == "Delhi",]
complete_delhi_data
delhi_data_2010 <-
  population_data[population_data$City == "Delhi", "2010"]
delhi_data_2010

#find cities which have population more than 200000 in every decade

dd <- subset( population_data ,
  population_data$"2000" > 200000 &
    population_data$"2010" > 200000 &
    population_data$"2020" > 200000 )
dd


#using tidyr package

pds <- tidyr::gather(population_data, "year", "population", 2:4)
pds


#find the cities where population is more than 300000 in 2010 
#using dply select

pds %>% filter( year == 2010 & population > 300000) 

#pds %>% filter( year == 2010 & population > 300000) %>% filter(population > 300000)




