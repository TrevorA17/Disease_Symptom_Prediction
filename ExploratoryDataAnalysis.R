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

# Assuming your dataset is named "your_data"

# Measures of Frequency
# Frequency of each disease
disease_frequency <- table(your_data$Disease)

# Frequency of each symptom
symptom1_frequency <- table(your_data$Symptom_1)
symptom2_frequency <- table(your_data$Symptom_2)
symptom3_frequency <- table(your_data$Symptom_3)
symptom4_frequency <- table(your_data$Symptom_4)

# Measures of Central Tendency
# No central tendency measures are applicable for disease or symptom variables

# Measures of Distribution
# No distribution measures are applicable for disease or symptom variables

# Measures of Relationship
# Association between disease and symptom 1
association_symptom1 <- table(your_data$Disease, your_data$Symptom_1)

# Association between disease and symptom 2
association_symptom2 <- table(your_data$Disease, your_data$Symptom_2)

# Association between disease and symptom 3
association_symptom3 <- table(your_data$Disease, your_data$Symptom_3)

# Association between disease and symptom 4
association_symptom4 <- table(your_data$Disease, your_data$Symptom_4)

# Output Measures of Frequency
print("Frequency of each disease:")
print(disease_frequency)

print("Frequency of Symptom 1:")
print(symptom1_frequency)

print("Frequency of Symptom 2:")
print(symptom2_frequency)

print("Frequency of Symptom 3:")
print(symptom3_frequency)

print("Frequency of Symptom 4:")
print(symptom4_frequency)

# Output Measures of Relationship
print("Association between Disease and Symptom 1:")
print(association_symptom1)

print("Association between Disease and Symptom 2:")
print(association_symptom2)

print("Association between Disease and Symptom 3:")
print(association_symptom3)

print("Association between Disease and Symptom 4:")
print(association_symptom4)
