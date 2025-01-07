# Load the dataset
data <- read.csv("C:/Users/fazee/OneDrive/Desktop/team research and development/archive/epidemic/clusters.csv")

# Perform Spearman's rank correlation test
spearman_test <- cor.test(data$tests, data$cases_total, method = "spearman")

# Print the result
print(spearman_test)