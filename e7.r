# Load the necessary library for plotting
library(ggplot2)

# Import the CSV file
weather_data <- read.csv("weather.csv")

# Plotting a bar chart for Temperature_C
ggplot(weather_data, aes(x = Date, y = Temperature_C)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Daily Temperature Report",
       x = "Date",
       y = "Temperature (°C)") +
  theme_minimal()


# Box plot for Temperature_C
ggplot(weather_data, aes(x = "", y = Temperature_C)) +
  geom_boxplot(fill = "lightblue") +
  labs(title = "Temperature Distribution",
       x = "",
       y = "Temperature (°C)") +
  theme_minimal()


# Histogram for Temperature_C
ggplot(weather_data, aes(x = Temperature_C)) +
  geom_histogram(fill = "lightgreen", color = "black", bins = 10) +
  labs(title = "Temperature Distribution",
       x = "Temperature (°C)",
       y = "Frequency") +
  theme_minimal()


