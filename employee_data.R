# Creating a data frame for 5 employees
employee_data <- data.frame(
  Employee_ID = c(101, 102, 103, 104, 105),
  Name = c("Alice", "Bob", "Charlie", "David", "Eva"),
  Age = c(28, 34, 25, 45, 30),
  Department = c("HR", "IT", "Finance", "Marketing", "Sales"),
  Salary = c(50000, 60000, 55000, 70000, 65000)
)

# Displaying the data frame
print("Employee Data:")
print(employee_data)

# Displaying the summary of the data
print("Summary of Employee Data:")
summary(employee_data)
