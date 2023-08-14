# Load the ChickWeight dataset
data(ChickWeight)

# (i) Order the data frame by weight in ascending order, grouped by diet
ordered_data <- ChickWeight[order(ChickWeight$weight), ]
grouped_data <- split(ordered_data, ordered_data$Diet)

# Extract the last 6 records from each group
last_6_records <- lapply(grouped_data, function(group) tail(group, 6))
final_data <- do.call(rbind, last_6_records)
print(final_data)

# (ii) a. Melting function based on "Chick", "Time", "Diet" as ID variables
library(reshape2)
melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))

# b. Cast function to display the mean value of weight grouped by Diet
mean_weight_per_diet <- dcast(melted_data, Diet ~ variable, mean)
print(mean_weight_per_diet)

# c. Cast function to display the mode of weight grouped by Diet
library(dplyr)
mode_weight_per_diet <- melted_data %>%
  group_by(Diet, variable) %>%
  summarize(Mode = as.numeric(names(sort(table(value), decreasing = TRUE)[1])))

mode_weight_per_diet <- dcast(mode_weight_per_diet, Diet ~ variable, value.var = "Mode")
print(mode_weight_per_diet)

