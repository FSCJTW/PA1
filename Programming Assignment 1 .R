# Practice Exercise 1 
# T. Wallace
# 5/17/2026
# Sequence sampling and descriptive statistics with base R + tidyverse

library(tidyverse)

# Step 1: Reproduce the vector from Practice Exercise
original_vector <- 5:-11

print("Original Vector (5 to -11):")
print(original_vector)

# Step 2: Take a random sample of size 10
set.seed(123)
sample_vector <- sample(original_vector, size = 10, replace = FALSE)

print("\nRandom Sample of 10 values:")
print(sample_vector)

# Step 3: Individual summary statistics
cat("\n--- Individual Statistics ---\n")
cat("Mean:    ", mean(sample_vector), "\n")
cat("Median:  ", median(sample_vector), "\n")
cat("Minimum: ", min(sample_vector), "\n")
cat("Maximum: ", max(sample_vector), "\n")

# Step 4: Using summary() function
cat("\n--- Using summary() function ---\n")
print(summary(sample_vector))

# Step 5: Comparison
cat("\nComparison:\n")
cat("Individual mean/median/min/max match the summary() results.\n")

# Step 6: Create and print a tibble
sample_tibble <- tibble(Sample_Values = sample_vector)

cat("\n--- Sample as a Tibble ---\n")
print(sample_tibble)