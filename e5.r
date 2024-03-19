# Reads data from csv
data <- read.csv("stud.csv")

# Prints contents of csv
print(head(data,10))

#add new entry
new_data <- data.frame('Student No' = 202, 'Average Marks' = 79)

#Combining Dataframes
datac <- rbind(data,new_data)

# Writing to dataset
write.csv(datac, file = "new_file.csv")

print(tail(datac,10))


