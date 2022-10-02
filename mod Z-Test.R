# Z-test

#   Null Hypothesis:  Mean Weight  <=7.5 
#   Alternate Hypothesis:  Mean weight  > 7.5 
#   Use 1- tailed test
#   Standard deviation of the babies weight = 1.25
#
#   Z Test Formula:       xbar - Mean weight
#                   -------------------------------------
#                   Standard Deviation / Square Root of n


data <- read_excel("data_mod.xlsx")
print(data)


zStat <- (mean(data$`weight(lbs)`) - 7.5) / (1.25 / sqrt(nrow(data)))
print(zStat)     
pvalue=pnorm(q=zStat,lower.tail=FALSE)
print(pvalue)
mean(data$`weight(lbs)`)

# p-value is very very less, so you can neglect the null hypothesis, as you can see the data added are also somewhat outliers


