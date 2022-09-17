# null hypothesis: Weight remains same
# alternate hypothesis: weight changes
# use 1-tailed test
data <- read_excel("data3.xlsx")
print(data)

data$Changeinweight=data$`After weight`-data$`Before weight`
print(data) 
tStat <- (mean(data$Changeinweight)) * sqrt(nrow(data)) / (sd(data$Changeinweight))
print(tStat)



pt(q=-tStat, df=nrow(data)-1, lower.tail=TRUE)

# Yes we can say with greater than 99% confidence that the participants lost weight. p-value(0.0002) is less than 0.01, so you reject the null hypothesis