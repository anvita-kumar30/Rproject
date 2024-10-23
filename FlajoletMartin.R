count_trailing_zeros <- function(x) {
  # Calculate the hash value
  hash_value <- x %% 11
  
  # Get the binary representation
  binary_representation <- as.integer(intToBits(hash_value))
  binary_representation <- binary_representation[1:5]  # Keep only the last 5 bits
  binary_string <- paste(rev(binary_representation), collapse = "")
  
  # Count trailing zeros
  trailing_zeros <- 0
  for (bit in rev(strsplit(binary_string, "")[[1]])) {
    if (bit == '0') {
      trailing_zeros <- trailing_zeros + 1
    } else {
      break
    }
  }
  
  return(list(trailing_zeros = trailing_zeros, binary_string = binary_string))
}

flajolet_martin <- function() {
  input_stream <- c(10, 14, 15, 12, 15, 10, 15, 14, 10, 15)
  max_trailing_zeros <- -1  # Start with -1 to ensure any trailing zero count is larger
  
  for (num in input_stream) {
    result <- count_trailing_zeros(num)
    trailing_zeros <- result$trailing_zeros
    binary_string <- result$binary_string
    
    cat("Number ", num, " => Binary: ", binary_string, " => Trailing zeros: ", trailing_zeros, "\n")
    
    # Update max trailing zeros and corresponding number R
    if (trailing_zeros > max_trailing_zeros) {
      max_trailing_zeros <- trailing_zeros
    }
  }
  
  # Calculate final result
  final_result <- 2^max_trailing_zeros
  cat("Maximum trailing zeros (R): ", max_trailing_zeros, "\n")
  cat("Estimated number of distinct elements (N=2^R): 2^", max_trailing_zeros, " = ", final_result, "\n")
}

# Run the Flajolet-Martin function
flajolet_martin()

