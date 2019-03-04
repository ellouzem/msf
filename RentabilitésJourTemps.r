####Rentabilités journalières au cours du temps#######

rm = RentH[2]
dates = RentH[1]
Vecdates = dates[[1]]
mvector = rm[[1]]
plot(Vecdates, mvector, type="l", col="red",xlab="Années",ylab="Rentabilités")