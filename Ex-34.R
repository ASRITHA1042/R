data(airquality)
missing_count <- colSums(is.na(airquality))
total_rows <- nrow(airquality)
missing_percent <- missing_count / total_rows * 100

for (col in names(airquality)) {
  if (missing_percent[col] < 10) {
    airquality[[col]][is.na(airquality[[col]])] <- mean(airquality[[col]], na.rm = TRUE)
  } else {
    airquality <- airquality[complete.cases(airquality), ]
  }
}
model <- lm(Ozone ~ Solar.R, data = airquality)
plot(airquality$Solar.R, airquality$Ozone, xlab = "Solar Radiation", ylab = "Ozone Concentration",
     main = "Scatter Plot of Ozone vs Solar Radiation")
abline(model, col = "red")

