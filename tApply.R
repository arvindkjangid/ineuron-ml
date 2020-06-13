
install.packages("readxl")
library(readxl)
data = read_xls(file.choose())
head(data)
attach(data)
# calculate the mean Age for Smoker/NonSmoker
tapply(X=Age,INDEX = Smoke,FUN = mean,na.rm=T)

mean(Age[Smoke=='yes'])
mean(Age[Smoke=='no'])

m <- tapply(X=Age,INDEX = Smoke,FUN = mean,na.rm=T)

# simplyfy N
tapply(Age,Smoke,mean,simplify = F)

# summary
tapply(Age,Smoke,summary)

# quantile
tapply(Age,Smoke,quantile,probs=c(0.2,0.8))

# applying multiple condition
tapply(Age,list(Smoke,Gender),mean)


# **********************
# by function
by(Age,list(Smoke,Gender),mean,na.rm=T)

