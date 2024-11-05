# Load necessary libraries
library(ggplot2)
library(dplyr)

# Set the file path for the dataset
file_path <- "D:/dataset/wine.data"

# Load the dataset
wine_data <- read.csv(file_path, header = FALSE)

# Add column names based on the UCI Wine dataset
colnames(wine_data) <- c("Class", "Alcohol", "Malic_Acid", "Ash", "Alcalinity_of_Ash", 
                         "Magnesium", "Total_Phenols", "Flavanoids", "Nonflavanoid_Phenols", 
                         "Proanthocyanins", "Color_Intensity", "Hue", 
                         "OD280_OD315_of_Diluted_Wines", "Proline")

# Explore the structure and summary statistics of the dataset
str(wine_data)
summary(wine_data)

# Exploratory Data Analysis - Individual Plots for Each Variable

# Histograms for each variable
ggplot(wine_data, aes(x = Alcohol)) + 
  geom_histogram(bins = 20, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Alcohol Content", x = "Alcohol", y = "Frequency")

ggplot(wine_data, aes(x = Malic_Acid)) + 
  geom_histogram(bins = 20, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Malic Acid Content", x = "Malic Acid", y = "Frequency")

ggplot(wine_data, aes(x = Ash)) + 
  geom_histogram(bins = 20, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Ash Content", x = "Ash", y = "Frequency")

ggplot(wine_data, aes(x = Alcalinity_of_Ash)) + 
  geom_histogram(bins = 20, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Alcalinity of Ash", x = "Alcalinity of Ash", y = "Frequency")

ggplot(wine_data, aes(x = Magnesium)) + 
  geom_histogram(bins = 20, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Magnesium Content", x = "Magnesium", y = "Frequency")

ggplot(wine_data, aes(x = Total_Phenols)) + 
  geom_histogram(bins = 20, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Total Phenols", x = "Total Phenols", y = "Frequency")

ggplot(wine_data, aes(x = Flavanoids)) + 
  geom_histogram(bins = 20, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Flavanoids", x = "Flavanoids", y = "Frequency")

ggplot(wine_data, aes(x = Nonflavanoid_Phenols)) + 
  geom_histogram(bins = 20, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Nonflavanoid Phenols", x = "Nonflavanoid Phenols", y = "Frequency")

ggplot(wine_data, aes(x = Proanthocyanins)) + 
  geom_histogram(bins = 20, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Proanthocyanins", x = "Proanthocyanins", y = "Frequency")

ggplot(wine_data, aes(x = Color_Intensity)) + 
  geom_histogram(bins = 20, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Color Intensity", x = "Color Intensity", y = "Frequency")

ggplot(wine_data, aes(x = Hue)) + 
  geom_histogram(bins = 20, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Hue", x = "Hue", y = "Frequency")

ggplot(wine_data, aes(x = OD280_OD315_of_Diluted_Wines)) + 
  geom_histogram(bins = 20, fill = "skyblue", color = "black") +
  labs(title = "Distribution of OD280/OD315 of Diluted Wines", x = "OD280/OD315 of Diluted Wines", y = "Frequency")

ggplot(wine_data, aes(x = Proline)) + 
  geom_histogram(bins = 20, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Proline", x = "Proline", y = "Frequency")

# Boxplots for each variable grouped by Class
ggplot(wine_data, aes(x = as.factor(Class), y = Alcohol, fill = as.factor(Class))) +
  geom_boxplot() +
  labs(title = "Boxplot of Alcohol by Class", x = "Wine Class", y = "Alcohol") +
  theme(legend.position = "none")

ggplot(wine_data, aes(x = as.factor(Class), y = Malic_Acid, fill = as.factor(Class))) +
  geom_boxplot() +
  labs(title = "Boxplot of Malic Acid by Class", x = "Wine Class", y = "Malic Acid") +
  theme(legend.position = "none")

ggplot(wine_data, aes(x = as.factor(Class), y = Ash, fill = as.factor(Class))) +
  geom_boxplot() +
  labs(title = "Boxplot of Ash by Class", x = "Wine Class", y = "Ash") +
  theme(legend.position = "none")

ggplot(wine_data, aes(x = as.factor(Class), y = Alcalinity_of_Ash, fill = as.factor(Class))) +
  geom_boxplot() +
  labs(title = "Boxplot of Alcalinity of Ash by Class", x = "Wine Class", y = "Alcalinity of Ash") +
  theme(legend.position = "none")

ggplot(wine_data, aes(x = as.factor(Class), y = Magnesium, fill = as.factor(Class))) +
  geom_boxplot() +
  labs(title = "Boxplot of Magnesium by Class", x = "Wine Class", y = "Magnesium") +
  theme(legend.position = "none")

ggplot(wine_data, aes(x = as.factor(Class), y = Total_Phenols, fill = as.factor(Class))) +
  geom_boxplot() +
  labs(title = "Boxplot of Total Phenols by Class", x = "Wine Class", y = "Total Phenols") +
  theme(legend.position = "none")

ggplot(wine_data, aes(x = as.factor(Class), y = Flavanoids, fill = as.factor(Class))) +
  geom_boxplot() +
  labs(title = "Boxplot of Flavanoids by Class", x = "Wine Class", y = "Flavanoids") +
  theme(legend.position = "none")

# Scatter plots by Class for selected pairs of variables
ggplot(wine_data, aes(x = Alcohol, y = Proline, color = as.factor(Class))) + 
  geom_point() +
  labs(title = "Scatter Plot of Alcohol vs. Proline by Class", x = "Alcohol", y = "Proline") +
  theme_minimal()

ggplot(wine_data, aes(x = Malic_Acid, y = Ash, color = as.factor(Class))) + 
  geom_point() +
  labs(title = "Scatter Plot of Malic Acid vs. Ash by Class", x = "Malic Acid", y = "Ash") +
  theme_minimal()

ggplot(wine_data, aes(x = Total_Phenols, y = Flavanoids, color = as.factor(Class))) + 
  geom_point() +
  labs(title = "Scatter Plot of Total Phenols vs. Flavanoids by Class", x = "Total Phenols", y = "Flavanoids") +
  theme_minimal()

ggplot(wine_data, aes(x = Color_Intensity, y = Hue, color = as.factor(Class))) + 
  geom_point() +
  labs(title = "Scatter Plot of Color Intensity vs. Hue by Class", x = "Color Intensity", y = "Hue") +
  theme_minimal()

# Outlier Analysis - Function to Plot Boxplots of Individual Variables
plot_outlier <- function(variable) {
  boxplot(wine_data[[variable]], 
          main = paste("Boxplot of", variable), 
          col = "lightblue", 
          xlab = "", 
          horizontal = FALSE, 
          cex.main = 1.5,     # Increase title size
          cex.axis = 1.2)     # Increase axis label size
}

# List of variables for outlier analysis
variables <- c("Alcohol", "Malic_Acid", "Ash", "Alcalinity_of_Ash", 
               "Magnesium", "Total_Phenols", "Flavanoids", "Nonflavanoid_Phenols", 
               "Proanthocyanins", "Color_Intensity", "Hue", 
               "OD280_OD315_of_Diluted_Wines", "Proline")

# Example: To see outliers for Alcohol
plot_outlier("Alcohol")
