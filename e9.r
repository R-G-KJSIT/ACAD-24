# Set a random seed for reproducibility
set.seed(150)

# Generate independent variable (predictor) data
x <- rnorm(100, mean = 60, sd = 15)  

# Generate error term (residuals)
epsilon <- rnorm(100, mean = 0, sd = 10) 

# Generate dependent variable (response) data using a linear model
y <- 3 * x + 7 + epsilon 

# Create a data frame with predictor and response variables
data <- data.frame(x = x, y = y)

# Fit a linear model
lm_model <- lm(y ~ x, data = data)

# Display the summary of the linear model
print(summary(lm_model))
