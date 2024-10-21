# Create the data frame
data <- data.frame(
  Subject = c(1, 2, 3, 4, 5, 6),
  Class = c(1, 2, 1, 2, 1, 2),
  Marks = c(56, 75, 48, 69, 84, 53)
)

# Display the data frame
print("Original Data Frame:")
print(data)

# Subset where Subject is less than 4
subset_data <- subset(data, Subject < 4)

# Display the subset
print("Subset where Subject is less than 4:")
print(subset_data)

# Subset where Subject is less than 3 and Class equals to 2
bracket_subset <- data[data$Subject < 3 & data$Class == 2, ]

# Display the subset
print("Subset where Subject is less than 3 and Class equals to 2:")
print(bracket_subset)

# Visualize original data
barplot(data$Marks, 
        names.arg = data$Subject, 
        col = "lightblue", 
        main = "Marks of All Subjects", 
        xlab = "Subject", 
        ylab = "Marks")

# Visualize subset (Subject < 4)
barplot(subset_data$Marks, 
        names.arg = subset_data$Subject, 
        col = "lightgreen", 
        main = "Marks of Subjects < 4", 
        xlab = "Subject", 
        ylab = "Marks")

# Visualize subset (Subject < 3 and Class = 2)
barplot(bracket_subset$Marks, 
        names.arg = bracket_subset$Subject, 
        col = "lightcoral", 
        main = "Marks of Subjects < 3 and Class = 2", 
        xlab = "Subject", 
        ylab = "Marks")
