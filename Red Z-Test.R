# Z-test

#   Null Hypothesis:  Mean Weight  <=7.5 
#   Alternate Hypothesis:  Mean weight  > 7.5 
#   Use 1- tailed test
#   Standard deviation of the babies weight = 1.25
#
#   Z Test Formula:       xbar - Mean weight
#                   -------------------------------------
#                   Standard Deviation / Square Root of n


data <- read_excel("Data_red.xlsx")
print(data)

zStat <- (mean(data$`weight(lbs)`) - 7.5) / (1.25 / sqrt(nrow(data)))
print(zStat)     
pvalue=pnorm(q=zStat,lower.tail=FALSE)
print(pvalue)
mean(data$`weight(lbs)`)

# p-value is very high , so you cannot reject the null hypothesis (0.99),
# removed a lot of data sets



