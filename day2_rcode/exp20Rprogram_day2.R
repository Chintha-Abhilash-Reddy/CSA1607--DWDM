data(mtcars)

boxplot(mpg ~ factor(cyl),
        data = mtcars,
        col = c("lightblue", "lightgreen", "orange"),
        main = "MPG by Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon")

print(tapply(mtcars$mpg, mtcars$cyl, summary))