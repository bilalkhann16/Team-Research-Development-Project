# Load the dataset
data <- read.csv("C:/Users/fazee/OneDrive/Desktop/team research and development/archive/epidemic/clusters.csv")

# Create a histogram for the total number of cases -> dependent variable
h <- hist(data$cases_total, 
          breaks = 20, 
          xlab = "Total Number of Cases", 
          ylab = "Frequency", 
          main = "Histogram of Total Number of Cases", 
          col = "darkblue", 
          border = "black")


data <- read.csv("C:/Users/fazee/OneDrive/Desktop/team research and development/archive/epidemic/clusters.csv")

# Create a histogram for the number of tests conducted
h_tests <- hist(data$tests, 
                breaks = 500, 
                xlab = "Number of Tests Conducted", 
                ylab = "Frequency", 
                main = "Histogram of Number of Tests Conducted", 
                col = "lightgreen", 
                border = "black")