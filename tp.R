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
arch11 <- garch(RentJdf[,2], c(0,11))
Rarch11<-1-var(arch11$residuals[!is.na(arch11$residuals)])/var(RentJdf[,2])
summary(arch11)

arch10 <- garch(RentJdf[,2], c(0,10))
Rarch10<-1-var(arch10$residuals[!is.na(arch10$residuals)])/var(RentJdf[,2])
summary(arch9)


arch9 <- garch(RentJdf[,2], c(0,9))
Rarch9<-1-var(arch9$residuals[!is.na(arch9$residuals)])/var(RentJdf[,2])
summary(arch9)

arch5 <- garch(RentJdf[,2], c(0,5))
Rarch9<-1-var(arch5$residuals[!is.na(arch5$residuals)])/var(RentJdf[,2])
summary(arch5)

AIC(arch11)
AIC(arch10)
AIC(arch9)
AIC(arch5)



arch11fit <- garchFit(~ garch(0,11), RentJdf[periode90_15,2])
Rarch11<-1-var(arch11$residuals[!is.na(arch11$residuals)])/var(RentJdf[,2])
summary(arch11fit)
#### Test

periode90_15 = which(RentJdf[,1] < "2015-01-01")
arch90_15 = garch(RentJdf[periode90_15,2], c(0,11))

#test
periode15_18 = which(RentJdf[,1] >= "2015-01-01")
length(periode15_18)
pred = predict(arch90_15, RentJdf[periode15_18,2])
length(pred)

######### Question 8


periode90_04 = which(RentJdf[,1] <= "2004-12-31")
arch90_04  <- garch(RentJdf[periode90_04,2], c(0,11))
Rarch90_04 <-1-var(arch90_04 $residuals[!is.na(arch90_04 $residuals)])/var(RentJdf[periode90_04,2])
summary(arch90_4)


periode05_18 = which(RentJdf[,1] > "2004-12-31")
arch05_18 <- garch(RentJdf[periode05_18,2], c(0,10))
Rarch05_18<-1-var(arch05_18$residuals[!is.na(arch05_18$residuals)])/var(RentJdf[periode05_18,2])
summary(arch05_18)




