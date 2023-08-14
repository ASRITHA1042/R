install.packages("ggplot2")
data(ChickWeight)

# Load necessary libraries
library(ggplot2)

# a. Create Box plot for "weight" grouped by "Diet"
ggplot(ChickWeight, aes(x = factor(Diet), y = weight)) +
  geom_boxplot() +
  labs(title = "Box Plot of Weight Grouped by Diet", x = "Diet", y = "Weight")

# b. Create Histogram for "weight" in Diet 1
ggplot(ChickWeight, aes(x = weight)) +
  geom_histogram(binwidth = 10, fill = "blue", color = "black") +
  labs(title = "Histogram of Weight in Diet 1", x = "Weight", y = "Frequency")

# c. Create Scatter plot for "weight" vs "Time" grouped by Diet
ggplot(ChickWeight, aes(x = Time, y = weight, color = factor(Diet))) +
  geom_point() +
  labs(title = "Scatter Plot of Weight vs Time Grouped by Diet", x = "Time", y = "Weight") +
  scale_color_discrete(name = "Diet")
