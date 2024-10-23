# Numeric vectors for sales from Monday to Friday
bread <- c(12, 3, 5, 11, 9)
milk <- c(21, 27, 18, 20, 15)
cola_cans <- c(10, 1, 33, 6, 12)
chocolate_bars <- c(6, 7, 4, 13, 12)
detergent <- c(5, 8, 12, 20, 23)

# Check vectors
bread
milk
cola_cans
chocolate_bars
detergent

# Create a matrix using the sales data
sales_matrix <- matrix(c(bread, milk, cola_cans, chocolate_bars, detergent), 
                       nrow = 5, byrow = FALSE)

# Extract the 2nd element from the 'bread' vector
bread[2]

# Extract the element from the 2nd row and 3rd column of the matrix
sales_matrix[2, 3]

# Create a data frame using the sales data
df <- data.frame(bread, milk, cola_cans, chocolate_bars, detergent)

# Extract the 'milk' column from the data frame
df$milk

# Subset milk sales greater than 20
milk[milk > 20]

