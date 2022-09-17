# null hypothesis: Cats eat same amount of food of type A and type B
# alternate hypothesis: Cats eat same different amount of food of type A and type B
# use 2-tailed test


data <- read_excel("data4.xlsx")
print(data)
diff= mean(data$`Type A`,na.rm = TRUE)-mean(data$`Type B`)
n1=nrow(data) - sum(is.na(data))
n2=nrow(data)
s1=sd(data$`Type A`,na.rm = TRUE)
s2=sd(data$`Type B`)
avsd = sqrt((((n1-1)*s1*s1) + ((n2-1)*s2*s2))/(n1+n2-2))
of=sqrt((n1+n2)/(n1*n2))
avsd=as.numeric(avsd)
of=as.numeric(of)
diff=as.numeric(diff)
tstat=diff/((avsd*of))
print(tstat)

2*pt(q=tstat, df=20, lower.tail=TRUE)

# p-value(0.09581111) is more than 0.05 , so we cannot reject null hypothesis
