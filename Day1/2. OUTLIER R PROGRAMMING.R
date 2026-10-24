age<-c(5,15,20,50,80,110)
frequency<-c(200,450,300,1500,700,44)
medA=median(age)
medF=median(frequency)
cat("Median of Age: ",medA, "and Media Frequency is: ",medF)

TA <- c(76,35,47,64,95,65,89,35,84,76,35,47,64,95,66,89,36,84)
TB <- c(25,51,56,84,60,59,70,63,66,50,51,56,60,59,70,63,66,50)
boxplot(TA, TB,
        names = c("Teacher A", "Teacher B"),
        main = "Comparison of Marks Teacher A and Teacher B",
        ylab = "Marks",
        col = c("lightblue", "lightgreen"))
mean(TA)
median(TA)
mean(TB)
median(TB)

