#############Estimation de la densité de la loi normale contaminée#############
library(mixtools)
rm = RentH[2]
myvect = rm[[1]]
normmixt <-normalmixEM(mvect, k =2, fast = TRUE)
pi<-normmixt$lambda[1]
mu1<-normmixt$mu[1]
mu2<-normmixt$mu[2]
sig1<-normmixt$sigma[1]
sig2<-normmixt$sigma[2]
#####graphe
plot(density(myvect),col="blue",main ="", ylab = "Densités")
x <- seq(-0.05, 0.05, length=1000)
espEmp = mean(myvect)
varEmp = var(myvect)
lnormx <- dnorm(x, espEmp, sqrt(varEmp))
curve(expr=pi*dnorm(x,mu1,sig1)+(1-pi)*dnorm(x,mu2,sig2),lwd=2,add=TRUE)
lines(x, lnormx, col='red')