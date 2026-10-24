A <- c(18, 2, 20)
B <- c(22, 28, 10)
C <- c(20, 40, 40)

data <- data.frame(A, B, C)

print("Covariance between B and C:")
print(cov(B, C))

print("Covariance matrix:")
print(cov(data))

print("Correlation between B and C:")
print(cor(B, C))

print("Correlation matrix:")
print(cor(data))