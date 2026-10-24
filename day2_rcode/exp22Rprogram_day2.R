data <- read.csv(file.choose())

print(head(data))
print(names(data))

names(data) <- trimws(names(data))

if ("Age" %in% names(data) &&
    "BloodPressure" %in% names(data)) {
  
  data <- data[!is.na(data$Age) &
                 !is.na(data$BloodPressure), ]
  
  plot(data$Age, data$BloodPressure,
       main = "Blood Pressure vs Age",
       xlab = "Age",
       ylab = "Blood Pressure",
       pch = 19, col = "blue")
  
  bar_data <- aggregate(
    BloodPressure ~ Age,
    data = data,
    FUN = mean
  )
  
  barplot(bar_data$BloodPressure,
          names.arg = bar_data$Age,
          col = "lightgreen",
          main = "Average Blood Pressure by Age",
          xlab = "Age",
          ylab = "Blood Pressure",
          las = 2)
  
} else {
  print("Check the column names printed above.")
}