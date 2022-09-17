# null hypothesis: Average time to do the job remains same
# alternate hypothesis: Average time to do the job is reduced
# use 1-tailed test


data <- read_excel("data5.xlsx")
print(data)
diff= mean(data$`Time before training`)-mean(data$`Time after training`,na.rm = TRUE)
n2=nrow(data) - sum(is.na(data))
n1=nrow(data)
s1=sd(data$`Time before training`)
s2=sd(data$`Time after training`,na.rm = TRUE)
avsd = sqrt(((s1*s1)/n1) + ((s2*s2)/n2))
avsd=as.numeric(avsd)
diff=as.numeric(diff)
tstat=diff/avsd
print(tstat)
a=((s1*s1*s1*s1)/(n1*n1))/(n1-1)
b=((s2*s2*s2*s2)/(n2*n2))/(n2-1)
a=as.numeric(a)
b=as.numeric(b)
df=(avsd*avsd*avsd*avsd)/(a+b)
print(df)
pt(q=tstat,20,lower.tail = FALSE)

# P-VALUE(0.09337327) is less than 0.1 , so you can reject null hypothesis