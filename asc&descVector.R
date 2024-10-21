# Create the vector
numbers <- c(23, 45, 10, 34, 89, 20, 67, 99)

# Sort in ascending order
ascending_order <- sort(numbers)

# Sort in descending order
descending_order <- sort(numbers, decreasing = TRUE)

# Display the sorted vectors
print("Ascending Order:")
print(ascending_order)

print("Descending Order:")
print(descending_order)

# Plotting the sorted vectors using bar charts
par(mfrow = c(1, 2))  # To show both charts side by side

# Bar chart for ascending order
barplot(ascending_order, 
        main = "Ascending Order", 
        col = "lightblue", 
        xlab = "Index", 
        ylab = "Values")

# Bar chart for descending order
barplot(descending_order, 
        main = "Descending Order", 
        col = "lightcoral", 
        xlab = "Index", 
        ylab = "Values")

# Reset the plotting layout
par(mfrow = c(1, 1))
