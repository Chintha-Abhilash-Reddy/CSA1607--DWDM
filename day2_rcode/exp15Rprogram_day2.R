A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

cat("Class A Mean:", mean(A), "\n")
cat("Class A Median:", median(A), "\n")
cat("Class A Range:", diff(range(A)), "\n")

cat("Class B Mean:", mean(B), "\n")
cat("Class B Median:", median(B), "\n")
cat("Class B Range:", diff(range(B)), "\n")

boxplot(A, B,
        names = c("Class A", "Class B"),
        col = c("lightblue", "lightgreen"),
        main = "Comparison of Maths Classes",
        ylab = "Marks")