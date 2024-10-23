main <- function() {
  # Read the length of the bit_array
  m <- as.integer(readline(prompt = "Enter the length of the bit_array (m): "))
  bit_array <- integer(m)  # Initialize the bit_array
  
  # Read the number of elements to add into Bloom Filter
  n <- as.integer(readline(prompt = "Enter the number of elements to add into the Bloom Filter (n): "))
  
  # Adding numbers into Bloom Filter
  for (i in 1:n) {
    input_value <- as.integer(readline(prompt = "Enter a number to add into Bloom Filter: "))
    
    hash1 <- (input_value %% 5) %% m
    hash2 <- ((2 * input_value + 3) %% 5) %% m
    
    bit_array[hash1 + 1] <- 1  # R uses 1-based indexing
    bit_array[hash2 + 1] <- 1
  }
  
  # Print the Bit_array
  cat("Bit Array:", paste(bit_array, collapse = " "), "\n")
  
  # Read the number of times to check
  x <- as.integer(readline(prompt = "Enter the number of elements to check (x): "))
  
  # Checking the array
  for (i in 1:x) {
    test_value <- as.integer(readline(prompt = "Enter a number to check: "))
    
    hash1 <- (test_value %% 5) %% m
    hash2 <- ((2 * test_value + 3) %% 5) %% m
    
    if (bit_array[hash1 + 1] == 0 && bit_array[hash2 + 1] == 0) {
      cat("Number is definitely not present in the Bloom Filter.\n")
    } else if (bit_array[hash1 + 1] == 1 && bit_array[hash2 + 1] == 1) {
      cat("Number is probably present in the Bloom Filter.\n")
    } else {
      cat("Number is definitely not present in the Bloom Filter.\n")
    }
  }
}

# Run the main function
main()

