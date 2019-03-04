###########Rentabilités hebdomadaires##############

espEmp = mean(RentH$Rt)
varEmp = var(RentH$Rt)
abs <- seq(-0.15, 0.15, length=1000)
lnormx <- dnorm(abs, espEmp, sqrt(varEmp))
plot(density(RentH$Rt), ylab = "Densité", main = " Rentabilités hebdomadaires")
lines(abs, lnormx, col='red')




