# 📊 Hypothesis Testing in R

This project was developed as part of the **Statistical Programming (CCS 2233)** course at the School of Computing and Informatics, AIU.

It involves performing statistical hypothesis tests (one-sample and two-sample t-tests) on a dataset containing customer sales information using R.

---

## 📁 Dataset
- `yearly_sales.csv`: Contains customer sales totals and gender information.

---

## 🎯 Research Questions
1. **Is the average total sales per customer significantly different from $500?**  
   → Tested using a **One-sample T-test**.

2. **Is there a significant difference in average total sales between male and female customers?**  
   → Tested using a **Two-sample T-test**.

---

## 🔍 Hypothesis

### One-sample T-test:
- **Null Hypothesis (H0)**: The average total sales per customer is equal to $500.
- **Alternative Hypothesis (H1)**: The average total sales per customer is not equal to $500.

### Two-sample T-test:
- **Null Hypothesis (H0)**: The average total sales for male and female customers is the same.
- **Alternative Hypothesis (H1)**: The average total sales for male and female customers is different.

---

## 💻 R Code

```r
# Load libraries
library(readr)
library(stats)

# Load dataset
yearly_sales <- read_csv("yearly_sales.csv")

# Convert gender to factor
yearly_sales$gender <- as.factor(yearly_sales$gender)

# One-sample T-test
t.test(yearly_sales$sales_total, mu = 500)

# Two-sample T-test
t.test(sales_total ~ gender, data = yearly_sales)
```

---

## 🧪 Results Summary

### One-sample T-test:
- T-statistic: -78.528  
- p-value: < 2.2e-16  
- 95% Confidence Interval: [243.20, 255.71]  
- Mean: 249.46  
→ **Reject H0**, the mean is significantly different from $500.

### Two-sample T-test:
- T-statistic: 7.276  
- p-value: 3.579e-13  
- 95% Confidence Interval: [20.99, 41.38]  
- Female Mean: 257.69  
- Male Mean: 230.07  
→ **Reject H0**, male and female averages are significantly different.

---

## 👨‍🎓 Author Info

- **Name**: Abdullah Al Hadi  
- **Student ID**: AIU21102089  
- **Lecturer**: Professor Dr. Nurul Hashimah  
- **Course**: CCS 2233 - Statistical Programming

---

## 📄 Files Included

- `yearly_sales.csv` - The dataset
- `Hadi_assignment_2.pdf` - Full assignment report
- `README.md` - Project overview
