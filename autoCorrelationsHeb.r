############Auto-corrélation hebdomadaires ##################
par(mfrow = c(1, 2))

acY <- acf(RentH$Rt, type = "correlation", plot = T)
acY <- acf(RentH$Rt, type = "partial", plot = T)

#library(tseries)
armaHeb<-arma(RentH$Rt, lag = list(ar = c(2,4), ma = c(1,3,5)))

#armaHeb<-arma(RentH$Rt, lag = list(ar = c(2), ma = c(1,3)))
summary(armaHeb)
R2H<-1-var(armaHeb$residuals[!is.na(armaHeb$residuals)])/var(RentH$Rt)
R2H