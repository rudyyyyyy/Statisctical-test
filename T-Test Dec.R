# T-test

#   null hypothesis : Statistically equal
#   alternate hypothesis : Statistically not  equal
#   Use 2-tailed test
#   mean of the students height = 5.5
#
#   T Test Formula:       xbar - Mean weight
#                   -------------------------------------
#                   Standard Deviation / Square Root of n


data <- read_excel("Data 2 red.xlsx")
print(data)

tStat <- (mean(data2$height) - 5.5) / (sd(data2$height) / sqrt(nrow(data)))
print(tStat)     

2*pt(q=tStat, df=nrow(data)-1, lower.tail=FALSE)


# We can say p-value(0.13) is higher than  0.05, so we do not reject the null hypothesis
