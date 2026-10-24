prices <- c(1, 1, 5, 5, 5, 5, 5, 8, 8,
            10, 10, 10, 10, 12, 14, 14, 14,
            15, 15, 15, 15, 15, 15,
            18, 18, 18, 18, 18)

num_bins <- 3

bins <- split(prices,
              cut(seq_along(prices),
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

print("Bin mean smoothing:")
print(mean_smoothing)

print("Bin boundary smoothing:")
print(boundary_smoothing)

hist(prices, breaks = num_bins, col = "lightgreen",
     main = "All Electronics Prices",
     xlab = "Price")