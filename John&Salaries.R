# Enter the data for the first 10 employees
employee_data <- data.frame(
  Sr_No = 1:10,
  Name = c("Vivek", "Karan", "James", "Soham", "Renu", "Farah", "Hetal", "Mary", "Ganesh", "Krish"),
  Salary = c(21000, 55000, 67000, 50000, 54000, 40000, 30000, 70000, 20000, 15000)
)

# Display the data
print("Employee Data:")
print(employee_data)

# New data for 5 additional employees
new_employee_data <- data.frame(
  Sr_No = 11:15,
  Name = c("Ajay", "Neha", "Aman", "Pooja", "Rahul"),
  Salary = c(48000, 52000, 60000, 45000, 35000)
)

# Add the new employees to the original dataset
updated_employee_data <- rbind(employee_data, new_employee_data)

# Display the updated data
print("Updated Employee Data:")
print(updated_employee_data)

# Bar plot to visualize employee salaries
barplot(updated_employee_data$Salary, 
        names.arg = updated_employee_data$Name, 
        col = "lightblue", 
        main = "Salaries of Employees", 
        xlab = "Employees", 
        ylab = "Salaries", 
        las = 2, # To rotate the names for better readability
        cex.names = 0.8) # To adjust the name size
