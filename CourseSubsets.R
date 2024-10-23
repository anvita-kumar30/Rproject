# Create the data frame
df <- data.frame(
  course = c(1, 2, 3, 4, 5, 6),
  id = c(11, 12, 13, 14, 15, 16),
  class = c(1, 2, 1, 2, 1, 2),
  marks = c(56, 75, 48, 69, 84, 53)
)

# Subset where course is less than 3
subset_course <- df[df$course < 3, ]

# Display the result
print(subset_course)

# Subset where course is less than 3 or class equals 2
subset_course_class <- subset(df, course < 3 | class == 2)

# Display the result
print(subset_course_class)
