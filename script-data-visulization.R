#Installing library
library(readr)

#loading dataset
data <- read.csv('Desktop/Herts❤️/Team Research & Development/clusters.csv')

#data cleaning
cleaned_data <- subset(data, !is.na(tests) & !is.na(cases_total) & tests >= 0 & cases_total >= 0)

# Create the boxplot Comparison of Means/Medians
boxplot(cleaned_data$tests, cleaned_data$cases_total,
        names = c("Tests", "Total Cases"),
        main = "Comparison of Means/Medians (Tests vs Cases)",
        ylab = "Value",
        col = c("lightblue", "lightgreen"))


# Create a scatter plot with a trendline to show Correlation Between Tests and Total Cases
plot(cleaned_data$tests, cleaned_data$cases_total,
     main = "Correlation Between Tests and Total Cases",
     xlab = "Tests Conducted",
     ylab = "Total Cases Reported",
     col = "blue",
     pch = 20)

# Add a trendline
abline(lm(cleaned_data$cases_total ~ cleaned_data$tests), col = "red")

# Create a new column for proportion of cases to tests
cleaned_data$proportion_cases <- cleaned_data$cases_total / cleaned_data$tests

# Create the histogram for Distribution of Proportions (Cases to Tests)
hist(cleaned_data$proportion_cases, 
     main = "Distribution of Proportions (Cases to Tests)",
     xlab = "Proportion of Cases to Tests",
     col = "skyblue", 
     border = "black", 
     breaks = 50)