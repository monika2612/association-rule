library(arules)
library(arulesViz)
mymovie<-read.csv(file.choose())
View(mymovie)
mymovie_trans<-as(as.matrix(mymovie[,6:15]),"transactions")
inspect(mymovie_trans)
# If we inspect book_trans
# we should get transactions of items i.e.
# As we have 10 rows ..so we should get 10transactions 
# Each row represents one transactions 
# After converting the binary format of data frame from matrix to transactions
# Perform apriori algorithm 
rules<-apriori(as.matrix(mymovie[,6:15]),parameter = list(support=0.002,confidence=0.5))

inspect(rules)
# Apriori algorithm 
plot(rules)
# Whenever we have binary kind of data .....load them as csv and convert them into 
# matrix format using as.matrix(data) and use this for forming 
# Association rules and change the values of support,confidence, and minlen 
# to get different rules 


# Whenever we have data containing item names, then load that data using 
# read.transactions(file="path",format="basket",sep=",")
# use this to form association rules 



dvdtrans<-read.transactions(file.choose(),format="basket")
inspect(dvdtrans)
class(groceries)
itemFrequencyPlot(dvdtrans)
dvdtrans_rules<-apriori(dvdtrans,parameter = list(support = 0.002,confidence = 0.05,minlen=3))

library(arulesViz)
plot(dvdtrans_rules)


library(arules)
data("dvdtrans")
summary(dvdtrans)
rules <- apriori(dvdtrans)
