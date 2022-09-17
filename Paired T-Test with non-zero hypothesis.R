# null hypothesis: Weight loss=0
# alternate hypothesis: weight loss > 4 pounds
# use 1-tailed test


data <- read_excel("data3.xlsx")
print(data)

data$Changeinweight=data$`After weight`-data$`Before weight`
print(data) 
tStat <- (mean(data$Changeinweight) + 4) * sqrt(nrow(data)) / (sd(data$Changeinweight))
print(tStat)

pt(tStat,nrow(data)-1)

# p-value(0.1477745) is greater than 0.05 , so we do not reject null hypothesis.
