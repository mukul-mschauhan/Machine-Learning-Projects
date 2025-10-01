# Create a DataFrame. Here is the 2014 Data of Profit of Top US Companies 
profit <- c(37037,18249,11431,32580, 5346, 
            13057,5113,5385,16483,16022)

company = c("Apple", "AT&T", "Bank_of_America", 
            "Exxon_Mobil", "General_Motors", 
            "General_Electric", "HP", "Home_Depot", 
            "IBM", "Walmart")

# Lets create a dataframe
company_data = data.frame(Company = company, Profit = profit)

####################Descriptive Statistics###################
####Mean####
# Lets calculate the Mean Profit
mean_profit = mean(company_data$Profit)
cat("Avg Profit", mean_profit)

# Ages (in years) of all eight employees of a small company:
age<- c(53,32,61,27,39,44,49,57)
mean_age = mean(age)
cat("Mean Age:", mean_age)

####Median####
# Lets calculate the Median Profit
median_profit = median(company_data$Profit)
cat("Median Profit", median_profit)

# lets find the median of Cell Phone Minutes
minutes <- c(160,184,201,230,263,326,380,397,510,721,2053,3864)
median_mins = median(minutes)
cat("Median of Minutes: ", median_mins)

####Mode####
# Lets calculate the Mode Profit
mode_profit = mode(company_data$Profit)
cat("Mode Profit", mode_profit)

####Range####
# Lets calculate the Profit Range
minimum = min(company_data$Profit)
maximum = max(company_data$Profit)
profit_range = maximum-minimum
cat("Profit Range: ", profit_range)

####Variance####
# Lets calculate the Profit Variance
profit_var = var(company_data$Profit)
cat("Profit Variance: ", profit_var)

####Standard Deviation####
# Lets calculate the Profit SD
profit_sd = sd(company_data$Profit)
cat("Profit S.D.: ", profit_sd)

####Summary Statistics####
# Lets Generate the Summary Statistics of the Data
summary(company_data)

####Boxplot####
library(ggplot2)
ggplot(company_data, aes(x = " ", y = Profit))+
  geom_boxplot(color = "red")+
  labs(title= "Boxplot - Company Profits",
       x = "", y = "Profits")+theme_minimal()

# Histogram
ggplot(company_data, aes(x = Profit)) +
  geom_histogram(color = "red", fill = "white", binwidth = 5000) + 
  labs(title = "Histogram - Company Profits",x = "Profits", y = "Count") + 
  theme_minimal()

####skewness####
install.packages("e1071")
library("e1071")

skewness(company_data$Profit) # Positively skewed data
kurtosis(company_data$Profit) # Positively skewed data


####quartiles####
quantile(company_data$Profit, 
         probs = c(0.25, 0.50, 0.75), na.rm = FALSE)


data("HousePrices")







