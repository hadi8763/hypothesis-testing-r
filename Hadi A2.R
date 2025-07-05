# Load necessary libraries
library(readr)
library(stats)

# Load the dataset
yearly_sales <- read_csv("C:/Users/Abd Hadi/statistic/Assignment 2/yearly_sales.csv")

# View the first few rows of the dataset
head(yearly_sales)

# Ensure 'Gender' is a factor
yearly_sales$Gender <- as.factor(yearly_sales$gender)

# One-sample T-test
# Test if the average total sales per customer is different from $500
one_sample_t_test <- t.test(yearly_sales$sales_total, mu = 500)
print(one_sample_t_test)

# Two-sample T-test
# Test if there is a difference in average total sales between male and female customers
two_sample_t_test <- t.test(sales_total ~ gender, data = yearly_sales)
print(two_sample_t_test)

