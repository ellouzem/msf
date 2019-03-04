#########Rentabilités mensuelles###############

espEmp = mean(RentM$Rt)
varEmp = var(RentM$Rt)
abs <- seq(-0.15, 0.15, length=1000)
lnormx <- dnorm(abs, espEmp, sqrt(varEmp))
plot(density(RentM$Rt), ylab = "Densité", main = " Rentabilités mensuelles")
lines(abs, lnormx, col='red')




