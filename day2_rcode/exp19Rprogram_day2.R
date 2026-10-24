install.packages("MASS")
library(MASS)

data(water)

plot(water$hardness, water$mortality,
     main = "Water Hardness vs Mortality",
     xlab = "Hardness",
     ylab = "Mortality",
     pch = 19, col = "blue")

model <- lm(mortality ~ hardness, data = water)

abline(model, col = "red", lwd = 2)

print(summary(model))

prediction <- predict(
  model,
  newdata = data.frame(hardness = 88)
)

print(prediction)