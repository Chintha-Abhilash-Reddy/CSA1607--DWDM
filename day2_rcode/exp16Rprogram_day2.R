data <- c(200,300,400,600,1000)

min_max <- (data - min(data)) /
  (max(data) - min(data))

z_score <- (data - mean(data)) / sd(data)

print(min_max)
print(z_score)