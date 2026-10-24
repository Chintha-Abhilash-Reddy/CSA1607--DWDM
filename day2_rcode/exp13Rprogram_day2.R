data <- c(18, 18, 18, 20, 20, 20, 20, 20, 20, 20,
          21, 21, 21, 21, 25, 25, 25, 25, 25, 28,
          28, 30, 30, 30)

num_bins <- 3
sorted_data <- sort(data)

bins <- split(sorted_data,
              cut(seq_along(sorted_data),
                  breaks = num_bins,
                  labels = FALSE))

print("Equal-frequency bins:")
print(bins)

mean_smoothing <- unlist(lapply(bins, function(x)
  rep(mean(x), length(x))))

boundary_smoothing <- unlist(lapply(bins, function(x)
  sapply(x, function(v) {
    if (abs(v - min(x)) <= abs(v - max(x)))
      min(x) else max(x)
  })))

print("Smoothing by bin means:")
print(mean_smoothing)

print("Smoothing by bin boundaries:")
print(boundary_smoothing)

hist(data, breaks = num_bins, col = "lightblue",
     main = "Histogram of Equal-Frequency Data",
     xlab = "Values")