# Shopper Data
spending<-c(2.32,6.61,6.9,8.04,9.45,10.26,11.34,11.63,12.66,12.95,
            13.67,13.72,14.35,14.52,14.55,15.01,15.33,16.55,17.15,
            18.22,18.3,18.71,19.54,19.55,20.58,20.89,20.91,21.13,
            23.85,26.04,27.07,28.76,29.15,30.54,31.99,32.82,33.26,
            33.8,34.76,36.22,37.52,39.28,40.8,43.97,45.58,52.36,
            61.57,63.85,54.3,59.49)
# Assume the fifty shoppers and one is picked randomly.
# Probability of picking a shopper who spent $40 or more dollars?
# Lets find count of people spending over 40
spendingover40 = length(spending[spending>40])
cat("Count", spendingover40)

# Find the Probability
totalcount = length(spending)
prob = spendingover40/totalcount
cat("Prob of Spending over 40:", prob)

# What is the probability of picking a shopper who spent less than $10?
lessthan10<-length(spending[spending<10])
prob_ten = lessthan10/totalcount
cat("Prob of Spending less than $10:", prob_ten)

# Instagram Case
# Seventy five percent of students at a college with a large student population use Instagram.
# Three students are randomly selected from this college. 
# What is the probability that exactly two of these three students use Instagram?
n<-6
x <-3
prob<-0.30
dbinom(x, n, prob)

# Suppose a gambler goes to the race track to bet on four races. 
# There are six horses in each race. 
# He picks one at random out of each race and bets on each of the 
# four selections. Assuming a binomial distribution, answer the following questions.
# The gambler wins all 4
dbinom(4, 4, 1/6)

# The gambler loses all four races.
dbinom(0, 4, 1/6)

# The gambler wins exactly one race.
dbinom(x = 1, size = 4, prob = 1/6)

# The gambler wins at least one race.
1 - pbinom(0, size = 4, prob = 1/6)

#Poisson Probability: Telemarketing Phone Calls
# Define the average rate (lambda)
lambda <- 9.5
# Define the number of occurrences (k)
k <- 6
# Calculate the Poisson probability
probability <- dpois(k, lambda)
# Print the result
cat("The probability that a household receives exactly", 
    k, "telemarketing phone calls in a week is:", probability, "\n")

# An emergency room has 4.6 serious accidents to handle on 
#average each night. Using the Poisson distribution, 
#calculate the distribution of accidents per night. 
#(In other words, what is the probability of 0, 1, 2, … 
# accidents per night?) Plot the result.

# Set the average number of accidents (lambda)
lambda <- 4.6

# Set the range of accidents (0 to a reasonable maximum)
k <- 0:15  # You may adjust the upper limit based on how you want to visualize the tail.

# Calculate the Poisson probabilities using dpois
probabilities <- dpois(k, lambda)

# Print the probabilities
data.frame(Accidents = k, Probability = probabilities)

# Plot the distribution
barplot(probabilities, names.arg = k, 
        main = "Poisson Distribution of Accidents per Night",
        xlab = "Number of Accidents", 
        ylab = "Probability",
        col = "lightblue", 
        border = "black")