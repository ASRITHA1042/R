# Load necessary libraries
library(caret)
library(dplyr)
library(glmnet)

# Load the iris dataset
data(iris)

# Set seed for reproducibility
set.seed(42)

# Randomly sample the iris dataset
train_index <- createDataPartition(iris$Species, p = 0.8, list = FALSE)
train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]

# Convert species to a binary outcome
train_data$Species <- ifelse(train_data$Species == "setosa", 0, 1)

# Create a logistic regression model with glmnet
model <- glmnet(x = as.matrix(train_data[, c("Petal.Length", "Petal.Width")]), 
                y = train_data$Species, 
                family = "binomial", 
                alpha = 0.5,  # L2 regularization
                lambda = 0.01)  # Regularization strength

# Predict probabilities using the test data
test_probs <- predict(model, newx = as.matrix(test_data[, c("Petal.Length", "Petal.Width")]), s = 0.01, type = "response")

# Convert probabilities to class predictions
predicted_classes <- ifelse(test_probs > 0.5, "versicolor", "setosa")

# Create Confusion Matrix
conf_matrix <- table(Actual = test_data$Species, Predicted = predicted_classes)
print("Confusion Matrix:")
print(conf_matrix)

