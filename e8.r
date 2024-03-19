# Define a function and make errors intentionally
divide_by_zero <- function(x, y) {
  z <- x / y
  return(z)
}

# Set up debugging using trace back() and debug()
trace_back_error <- function() {
  result <- divide_by_zero(10, 0)
  return(result)
}

# Call the function that triggers an error
trace_back_error()

# Use browser() and trace() for interactive debugging
trace_example <- function(x) {
  y <- x + 5
  browser()
  z <- y * 2
  return(z)
}

# Call the function with trace() enabled
trace_example(10)

# Use recover() to enter a debugging environment upon error
recover_example <- function() {
  a <- c(1, 2, 3)
  b <- a[5]  # Trigger an error by accessing out-of-bounds index
  return(b)
}

# Call the function that triggers an error and enter the debugging environment
recover_example()
