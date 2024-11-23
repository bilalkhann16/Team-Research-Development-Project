# Load the data
library(readr)
data <- read.csv("Desktop/Herts❤️/Team Research & Development/clusters.csv")

# Clean the data: Ensure no missing or invalid values
cleaned_data <- subset(data, !is.na(cases_total) & cases_total >= 0)

# Plot the histogram
hist(cleaned_data$cases_total, 
     main = "Normality Check of Dataset",
     xlab = "Total Cases Reported",
     ylab = "Frequency",
     col = "skyblue", 
     border = "black",
     breaks = 50,
     freq = FALSE)


# Add a normal curve (optional, to compare with a normal distribution)
x <- seq(min(cleaned_data$cases_total), max(cleaned_data$cases_total), length = 100)
y <- dnorm(x, mean = mean(cleaned_data$cases_total), sd = sd(cleaned_data$cases_total))
lines(x, y, col = "black", lwd = 2, lty = 2)

# Perform Shapiro-Wilk test for normality
# (Subset the data if it's very large, as Shapiro-Wilk works better with smaller samples)
if (nrow(cleaned_data) > 500) {
  sample_data <- sample(cleaned_data$cases_total, 500)
  shapiro_test <- shapiro.test(sample_data)
} else {
  shapiro_test <- shapiro.test(cleaned_data$cases_total)
}

# Print the Shapiro-Wilk test results
print(shapiro_test)
