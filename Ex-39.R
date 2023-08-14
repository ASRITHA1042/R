# Load the USArrests dataset
data(USArrests)

# (i) a. Explore the summary of the dataset
summary(USArrests)
sapply(USArrests, class)
sapply(USArrests, length)

# b. State with the largest total number of rape
largest_rape_state <- rownames(USArrests)[which.max(USArrests$Rape)]
cat("State with the largest total number of rape:", largest_rape_state, "\n")

# c. States with max and min crime rates for murder
max_murder_state <- rownames(USArrests)[which.max(USArrests$Murder)]
min_murder_state <- rownames(USArrests)[which.min(USArrests$Murder)]
cat("State with max crime rate for murder:", max_murder_state, "\n")
cat("State with min crime rate for murder:", min_murder_state, "\n")

# (ii) a. Find the correlation among the features
correlation_matrix <- cor(USArrests)
print(correlation_matrix)

# b. States with assault arrests more than median
median_assault <- median(USArrests$Assault)
high_assault_states <- rownames(USArrests)[USArrests$Assault > median_assault]
cat("States with assault arrests more than median:", high_assault_states, "\n")

# c. States in the bottom 25% of murder
bottom_25_murder <- rownames(USArrests)[USArrests$Murder <= quantile(USArrests$Murder, 0.25)]
cat("States in the bottom 25% of murder:", bottom_25_murder, "\n")

# (iii) a. Create histogram and density plot of murder arrests
hist(USArrests$Murder, main = "Histogram of Murder Arrests", xlab = "Murder Arrests")
lines(density(USArrests$Murder), col = "blue")

# b. Scatter plot showing relationship between murder arrest rate and urban population
plot(USArrests$UrbanPop, USArrests$Murder, xlab = "Urban Population (%)", ylab = "Murder Arrests",
     main = "Murder Arrest Rate vs Urban Population", col = USArrests$Assault, pch = 19)

# c. Bar graph to show murder rate for each state
barplot(USArrests$Murder, names.arg = rownames(USArrests), main = "Murder Rate by State",
        xlab = "State", ylab = "Murder Rate", col = "steelblue", horiz = TRUE)

