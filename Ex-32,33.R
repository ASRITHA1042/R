install.packages("reshape2")
data(airquality)
mean_temp <- sum(airquality$Temp) / length(airquality$Temp)
cat("Mean Temperature (manual):", mean_temp, "\n")
first_five_rows <- airquality[1:5, ]
print(first_five_rows)
cols_except_temp_wind <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print(cols_except_temp_wind)
coldest_day <- airquality[which.min(airquality$Temp), ]
cat("Coldest Day:\n", coldest_day, "\n")
wind_gt_17_count <- sum(airquality$Wind > 17)
cat("Number of days with wind speed > 17 mph:", wind_gt_17_count, "\n")
summary_stats <- summary(airquality)
print(summary_stats)
library(reshape2)
melted_data <- melt(airquality)
print(melted_data)
melted_data_id <- melt(airquality, id.vars = c("Month", "Day"))
print(melted_data_id)
casted_data <- dcast(melted_data_id, Month + Day ~ variable)
print(casted_data)
averages_per_month <- dcast(melted_data_id, Month ~ variable, mean)
print(averages_per_month)

