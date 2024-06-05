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
