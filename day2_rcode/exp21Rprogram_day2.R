points <- c(12,15,18,20,22,24,25,26,28,30,32,35,80)

boxplot(points,
        col = "lightblue",
        main = "Tennis Players' Scores",
        ylab = "Points Scored")

print(summary(points))
print(boxplot.stats(points)$out)