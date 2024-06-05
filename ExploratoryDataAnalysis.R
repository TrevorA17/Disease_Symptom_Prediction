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
