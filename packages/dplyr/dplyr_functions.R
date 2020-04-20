ds <- read.csv(
  file.path(getwd(), "data_files", "resouces_ds.csv"),
  check.names = F,
  stringsAsFactors = F
)

ds

#select named columns from dataset
select(ds, Name, Profile)

#filtering data based on condition
ds
ds %>% filter(Project == "FRP")
ds %>% filter(Project == "FRP") %>% filter(Salary > 50000)

#arrange in order by column names
ds %>% arrange(Project)
ds %>% arrange( desc(Salary))

#grouping by column name
ds
ds %>% select(Project, Profile, everything()) %>%  group_by(Project, Profile, Salary)

#finding max, avg [mean] min of a column
ds
ds %>% summarise(max(Salary))
ds %>% summarise(mean(Salary))
ds %>% summarise(sum(Salary))
ds %>% summarise(n_distinct(Profile))







