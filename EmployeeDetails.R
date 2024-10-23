# Step i: Create a data frame from the given vectors
emp_id <- c(1, 2, 3, 4, 5)
emp_name <- c("Rick", "Dan", "Michelle", "Ryan", "Gary")
start_date <- c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27")
salary <- c(60000, 45000, 75000, 84000, 20000)

# Create a data frame
df <- data.frame(emp_id, emp_name, start_date, salary)

# Step ii: Display structure and summary of the data frame
cat("Structure of the DataFrame:\n")
str(df)

cat("\nSummary of the DataFrame:\n")
summary(df)

# Step iii: Extract the emp_name and salary columns
cat("\nEmployee names and salaries:\n")
print(df[, c("emp_name", "salary")])

# Step iv: Extract employee details whose salary is less than or equal to 60000
low_salary_employees <- df[df$salary <= 60000, ]
cat("\nEmployees with salary <= 60000:\n")
print(low_salary_employees)

