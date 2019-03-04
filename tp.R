load("RentIBEX35I.RData")
RentJ
RentJdf = data.frame(RentJ)
RentHdf = data.frame(RentH)
RentMdf = data.frame(RentM)

lengthJ = length(RentJdf[,1])

par(mfrow = c(1, 2))


####### Question 6 
corrJ2 = acf(RentJdf[,2]^2, type="partial")
corrJ = pacf(RentJdf[,2]^2)




####### Question 7 
arch <- garch(RentJdf[,2], c(0,11))

summary(arch)
Rarch11<-1-var(arch$residuals[!is.na(arch$residuals)])/var(RentJdf[,2])

arch9 <- garch(RentJdf[,2], c(0,9))
Rarch9<-1-var(arch9$residuals[!is.na(arch9$residuals)])/var(RentJdf[,2])
summary(arch9)
######### Question 8







