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
