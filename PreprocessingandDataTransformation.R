# Load dataset
your_data <- read.csv("data/dataset.csv", colClasses = c(
  Disease = "factor",
  Symptom_1 = "factor",
  Symptom_2 = "factor",
  Symptom_3 = "factor",
  Symptom_4 = "factor"
))

# Display the structure of the dataset
str(your_data)

# View the first few rows of the dataset
head(your_data)

# View the dataset in a separate viewer window
View(your_data)


# Check for missing values in the entire dataset
missing_values <- sum(is.na(your_data))

# Check for missing values in each column
missing_in_columns <- sapply(your_data, function(x) sum(is.na(x)))

# Check for rows with missing values
rows_with_missing <- which(apply(your_data, 1, function(x) any(is.na(x))))

# Print the results
print(paste("Total missing values in the dataset:", missing_values))
print("Missing values in each column:")
print(missing_in_columns)
print("Rows with missing values:")
print(rows_with_missing)

