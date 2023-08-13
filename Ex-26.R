data = airquality
print("Original data: Daily air quality measurements in New York, May to September 1973.")
print(data)
data[,c("Solar.R")]=NULL
data[,c("Wind")]=NULL
print("data.frame after removing 'Solar.R'  and 'Wind' variables:")
print(data)
