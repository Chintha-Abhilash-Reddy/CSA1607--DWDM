marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

num_bins <- 3

# Equal-frequency binning
sorted_marks <- sort(marks)
bins <- split(sorted_marks, cut(seq_along(sorted_marks),
                                breaks = num_bins,
                                labels = FALSE))

print("Equal-frequency bins:")
print(bins)

# Smoothing by bin mean
smoothed_data_by_mean <- unlist(lapply(bins, function(x) {
  rep(mean(x), length(x))
}))

# Smoothing by bin median
smoothed_data_by_median <- unlist(lapply(bins, function(x) {
  rep(median(x), length(x))
}))

# Smoothing by bin boundaries
smoothed_data_by_boundaries <- unlist(lapply(bins, function(x) {
  sapply(x, function(v) {
    if (abs(v - min(x)) <= abs(v - max(x))) min(x) else max(x)
  })
}))

print("Original data:")
print(marks)

print("Smoothed data by bin mean:")
print(smoothed_data_by_mean)

print("Smoothed data by bin median:")
print(smoothed_data_by_median)

print("Smoothed data by bin boundaries:")
print(smoothed_data_by_boundaries)

# Histogram
hist(marks, breaks = num_bins, col = "lightblue",
     xlab = "Marks",
     main = "Distribution of Marks")