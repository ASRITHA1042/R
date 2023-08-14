values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)
mean_value <- mean(values)
cat("Mean:", mean_value, "\n")
median_value <- median(values)
cat("Median:", median_value, "\n")
mode_value <- function(x) {
  uniq_x <- unique(x)
  freq_x <- table(x)
  uniq_x[freq_x == max(freq_x)]
}
mode_values <- mode_value(values)
cat("Mode:", mode_values, "\n")
second_highest <- sort(values, decreasing = TRUE)[2]
cat("2nd Highest:", second_highest, "\n")
third_lowest <- sort(values)[3]
cat("3rd Lowest:", third_lowest, "\n")

