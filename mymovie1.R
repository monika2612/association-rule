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
rules<-apriori(as.matrix(mymovie[,6:15]),parameter = list(support=0.002,confidence=0.5,minlen=3))

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

# Visualizing rules in scatter plot
?plot

plot(rules,method = "graph")
# itemFrequencyPlot can be applicable only for transaction data 
# count of each item from all the transactions 
rules<-apriori(as.matrix(mymovie[,6:15]),parameter = list(support=0.002,confidence=0.5,minlen=3))

inspect(rules)


windows()
plot(rules,method = "scatterplot")
plot(rules,method = "grouped")
plot(rules,method = "graph")
plot(rules,method = "mosaic")

rules <- sort(rules,by="lift")
### On inbuilt Data set ##
### On inbuilt Data set #####
library(arules)
data("mymovie")
summary(mymovie)
inspect(mymovie[6:15])
rules <- apriori(mymovie_trans,parameter = list(support = 0.002,confidence = 0.05,minlen=5))
inspect(rules[1:5])
windows()
plot(rules,method = "scatterplot")
plot(rules,method = "grouped")
plot(rules,method = "graph")
plot(rules,method = "mosaic")

rules <- sort(rules,by="lift")

