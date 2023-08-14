# Load the ChickWeight dataset
data(ChickWeight)

# Convert the "Diet" variable to numeric
ChickWeight$Diet <- as.numeric(ChickWeight$Diet)

# Create multi regression model
model <- lm(weight ~ Time + Diet, data = ChickWeight)

# Predict weight for Time=10 and Diet=1
new_data <- data.frame(Time = 10, Diet = 1)
predicted_weight <- predict(model, newdata = new_data)
cat("Predicted Weight:", predicted_weight, "\n")

# Calculate the error
actual_weight <- ChickWeight$weight[ChickWeight$Time == 10 & ChickWeight$Diet == 1]
error <- abs(predicted_weight - actual_weight)
cat("Error:", error, "\n")

