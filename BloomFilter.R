# SimpleBloomFilter class in R
SimpleBloomFilter <- setRefClass(
  "SimpleBloomFilter",
  
  fields = list(
    size = "numeric",  # Size of the bit array
    bit_array = "numeric"  # The bit array
  ),
  
  methods = list(
    # Initialize the Bloom filter with the given size
    initialize = function(size) {
      size <<- size
      bit_array <<- rep(0, size)  # Create a bit array initialized with 0s
    },
    
    # Private hash function to generate an index
    .hash = function(item) {
      # Convert the digest hex string to a number and take modulo of size
      hash_hex <- digest::digest(item, algo = "xxhash32", raw = FALSE)
      hash_num <- as.numeric(strtoi(substr(hash_hex, 1, 8), base = 16))  # Convert hex to numeric
      return(hash_num %% size)
    },
    
    # Add an item to the Bloom filter
    add = function(item) {
      index <- .hash(item)  # Get the hash index
      cat(sprintf("Hash for %s: %d\n", item, index))
      bit_array[index + 1] <<- 1  # Set the bit at the index to 1 (+1 because R is 1-indexed)
    },
    
    # Check if an item is probably in the Bloom filter
    contains = function(item) {
      index <- .hash(item)  # Get the hash index
      cat(sprintf("Hash for %s: %d\n", item, index))
      return(bit_array[index + 1] == 1)  # Check if the bit at the index is set to 1
    }
  )
)

# Main function
main <- function() {
  # Load required library
  if (!requireNamespace("digest", quietly = TRUE)) {
    install.packages("digest")
  }
  library(digest)
  
  # Initialize Bloom filter with a bit array size of 100
  bf <- SimpleBloomFilter$new(size = 100)
  
  # Get the number of elements to add from the user
  num_elements <- as.numeric(readline("Enter the number of elements you want to add: "))
  
  # Add numbers to the Bloom filter
  for (i in 1:num_elements) {
    number <- as.numeric(readline(sprintf("Enter number %d to add to the Bloom filter: ", i)))
    bf$add(number)
  }
  
  # Show the final state of the bit array
  cat("\nFinal bit array:\n")
  print(bf$bit_array)
  
  # Get the number of elements to check from the user
  num_checks <- as.numeric(readline("Enter the number of elements you want to check: "))
  
  # Check membership
  for (i in 1:num_checks) {
    number <- as.numeric(readline(sprintf("Enter number %d to check: ", i)))
    if (bf$contains(number)) {
      cat(sprintf("%d is probably in the Bloom filter\n", number))
    } else {
      cat(sprintf("%d is definitely not in the Bloom filter\n", number))
    }
  }
}

# Run the main function
main()

