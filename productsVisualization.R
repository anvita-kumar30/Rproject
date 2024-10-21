# Creating vectors for each product
bread_sales <- c(12, 3, 5, 11, 9)
milk_sales <- c(21, 27, 18, 20, 15)
cola_cans_sales <- c(10, 1, 33, 6, 12)
chocolate_bars_sales <- c(6, 7, 4, 13, 12)
detergent_sales <- c(5, 8, 12, 20, 23)

# Days of the week
days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Set plotting layout to show 2x3 grid
par(mfrow = c(3, 2))

# Bar plot for bread sales
barplot(bread_sales, names.arg = days, 
        col = "lightblue", main = "Bread Sales",
        xlab = "Days", ylab = "Units Sold")

# Bar plot for milk sales
barplot(milk_sales, names.arg = days, 
        col = "lightgreen", main = "Milk Sales",
        xlab = "Days", ylab = "Units Sold")

# Bar plot for cola cans sales
barplot(cola_cans_sales, names.arg = days, 
        col = "lightcoral", main = "Cola Cans Sales",
        xlab = "Days", ylab = "Units Sold")

# Bar plot for chocolate bars sales
barplot(chocolate_bars_sales, names.arg = days, 
        col = "lightyellow", main = "Chocolate Bars Sales",
        xlab = "Days", ylab = "Units Sold")

# Bar plot for detergent sales
barplot(detergent_sales, names.arg = days, 
        col = "lightpink", main = "Detergent Sales",
        xlab = "Days", ylab = "Units Sold")

# Reset the plotting layout
par(mfrow = c(1, 1))

# Line plot comparing all product sales
plot(bread_sales, type = "o", col = "blue", 
     xlab = "Days", ylab = "Units Sold", 
     main = "Sales of Products Over the Week", 
     xaxt = "n", ylim = c(0, 35))
lines(milk_sales, type = "o", col = "green")
lines(cola_cans_sales, type = "o", col = "red")
lines(chocolate_bars_sales, type = "o", col = "yellow")
lines(detergent_sales, type = "o", col = "purple")

# Adding day labels to x-axis
axis(1, at = 1:5, labels = days)

# Add a legend to differentiate products
legend("topright", legend = c("Bread", "Milk", "Cola Cans", "Chocolate Bars", "Detergent"),
       col = c("blue", "green", "red", "yellow", "purple"), lty = 1, cex = 0.8)

