# Load dataset
your_data <- read.csv("data/dataset.csv", colClasses = c(
  Disease = "factor",
  Symptom_1 = "factor",
  Symptom_2 = "factor",
  Symptom_3 = "factor",
  Symptom_4 = "factor"
))


# Set seed for reproducibility
set.seed(123)

# Define the proportion of data for training (e.g., 70%)
train_proportion <- 0.7

# Generate random indices for splitting the data
train_indices <- sample(1:nrow(your_data), size = floor(train_proportion * nrow(your_data)))

# Create training and testing datasets
training_data <- your_data[train_indices, ]
testing_data <- your_data[-train_indices, ]

dim(training_data)
dim(testing_data)

# Load required library
library(caret)

# Install and load required packages
install.packages("rpart")
library(rpart)


# Define number of folds for cross-validation (e.g., 5-fold cross-validation)
num_folds <- 5

# Create cross-validation folds
cv_folds <- createFolds(your_data$Disease, k = num_folds, list = TRUE, returnTrain = FALSE)

# Perform cross-validation
for (i in 1:num_folds) {
  # Training data for this fold
  train_data <- your_data[-cv_folds[[i]], ]
  # Testing data for this fold
  test_data <- your_data[cv_folds[[i]], ]
  
  # Train your model using train_data and evaluate on test_data
  # For example, train a decision tree model
  model <- rpart(Disease ~ ., data = train_data, method = "class")
  predictions <- predict(model, test_data, type = "class")
  # Evaluate model performance
  accuracy <- mean(predictions == test_data$Disease)
  print(paste("Accuracy for fold", i, ":", accuracy))
}

