############Auto-corrélation journalières ##################

par(mfrow = c(1, 2))
acY <- acf(RentJ$Rt, type = "partial", plot = T)
acY <- acf(RentJ$Rt, type = "correlation", plot = T)
#library(tseries)
armaJour<-arma(RentJ$Rt, lag = list(ar = c(1), ma = c(1:2)))
summary(armaJour)
R2J<-1-var(armaJour$residuals[!is.na(armaJour$residuals)])/var(RentJ$Rt)
R2J