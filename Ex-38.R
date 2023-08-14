# Load necessary libraries
library(ggplot2)

# Convert Titanic table to a data frame
Titanic_df <- as.data.frame(Titanic)

# a. Bar chart to show details of "Survived" based on passenger class
ggplot(Titanic_df, aes(x = Class, fill = factor(Survived))) +
  geom_bar(position = "dodge") +
  labs(title = "Survival based on Passenger Class", x = "Class", y = "Count", fill = "Survived")

# b. Modify the plot based on gender of people who survived
ggplot(Titanic_df, aes(x = Class, fill = factor(Survived))) +
  geom_bar(position = "dodge") +
  facet_grid(. ~ Sex) +
  labs(title = "Survival based on Passenger Class and Gender", x = "Class", y = "Count", fill = "Survived")

# c. Histogram plot to show distribution of feature "Age"
ggplot(Titanic_df, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black") +
  labs(title = "Distribution of Age", x = "Age", y = "Frequency")

