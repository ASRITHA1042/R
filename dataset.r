
air_quality<- read.csv()

mean_temperature <- sum(air_quality$Temp) / nrow(air_quality)
print(mean_temperature)


first_5_rows <- air_quality[1:5, ]
print(first_5_rows)

selected_columns <- air_quality[, !(names(air_quality) %in% c("Temp", "Wind"))]
print(selected_columns)


coldest_day <- air_quality[which.min(air_quality$Temp), ]
print(coldest_day)

wind_greater_17mph <- air_quality[air_quality$Wind > 17, ]
num_days_wind_greater_17mph <- nrow(wind_greater_17mph)
print(num_days_wind_greater_17mph)