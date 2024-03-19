# Data Frames in R

print("Use of Data Frames for Computer Processor List")
pc.data <- data.frame(
    cpu_id = c(1:4),
    cpu_name = c("Intel Core i5","Intel Core i7","AMD Ryzen 5","AMD Ryzen 7"),
    cpu_price = c(25000,39000,23000,34000)
)

print(pc.data)

# Matrices in R

print("Use of Matrices to Print Multiples of 12")

M = matrix(c(12,24,36,48,60,72,84,96,108),nrow = 3,ncol = 3,byrow = 1)

print(M)