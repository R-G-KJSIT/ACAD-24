# Create Matrix 1
matrix1 <- matrix(c(2, 5, 7, 1, 3, 9, 4, 6, 8), nrow = 3, byrow = TRUE)

# Create Matrix 2
matrix2 <- matrix(c(10, 20, 30), nrow = 3)

# Check if matrices can be multiplied (columns of matrix1 == rows of matrix2)
if (ncol(matrix1) == nrow(matrix2)) {
  # Initialize the result matrix with appropriate dimensions
  result_matrix <- matrix(0, nrow = nrow(matrix1), ncol = ncol(matrix2))
  
  # Perform matrix multiplication using for loops
  for (i in 1:nrow(matrix1)) {
    for (j in 1:ncol(matrix2)) {
      for (k in 1:ncol(matrix1)) {
        result_matrix[i, j] <- result_matrix[i, j] + matrix1[i, k] * matrix2[k, j]
      }
    }
  }
  
  # Print the result matrix
  print(result_matrix)
} else {
  print("Matrices cannot be multiplied")
}

