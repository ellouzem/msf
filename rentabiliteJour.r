###########Rentabilité journalière#############

espEmp = mean(RentJ$Rt)
varEmp = var(RentJ$Rt)
abs <- seq(-0.05, 0.05, length=2000)
lnormx <- dnorm(abs, espEmp, sqrt(varEmp))
plot(density(RentJ$Rt), ylab = "Densité", main = " Rentabilités journalières")
lines(abs, lnormx, col='red')




