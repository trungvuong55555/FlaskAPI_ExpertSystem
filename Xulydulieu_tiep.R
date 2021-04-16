data_wine<- save_data_wine1
#doi lai nhan cho du lieu
data_wine$volatile.acidity<-str_replace(data_wine$volatile.acidity,"very low","1") 
data_wine$volatile.acidity<-str_replace(data_wine$volatile.acidity,"low","2")
data_wine$volatile.acidity<-str_replace(data_wine$volatile.acidity,"medium","3")
data_wine$volatile.acidity<-str_replace(data_wine$volatile.acidity,"very high","5")
data_wine$volatile.acidity<-str_replace(data_wine$volatile.acidity,"high","4")


data_wine$citric.acid<-str_replace(data_wine$citric.acid,"very low","1") 
data_wine$citric.acid<-str_replace(data_wine$citric.acid,"low","2")
data_wine$citric.acid<-str_replace(data_wine$citric.acid,"medium","3")
data_wine$citric.acid<-str_replace(data_wine$citric.acid,"very high","5")
data_wine$citric.acid<-str_replace(data_wine$citric.acid,"high","4")


data_wine$residual.sugar<-str_replace(data_wine$residual.sugar,"very low","1") 
data_wine$residual.sugar<-str_replace(data_wine$residual.sugar,"low","2")
data_wine$residual.sugar<-str_replace(data_wine$residual.sugar,"medium","3")
data_wine$residual.sugar<-str_replace(data_wine$residual.sugar,"very high","5")
data_wine$residual.sugar<-str_replace(data_wine$residual.sugar,"high","4")


data_wine$chlorides<-str_replace(data_wine$chlorides,"very low","1") 
data_wine$chlorides<-str_replace(data_wine$chlorides,"low","2")
data_wine$chlorides<-str_replace(data_wine$chlorides,"medium","3")
data_wine$chlorides<-str_replace(data_wine$chlorides,"very high","5")
data_wine$chlorides<-str_replace(data_wine$chlorides,"high","4")


data_wine$free.sulfur.dioxide<-str_replace(data_wine$free.sulfur.dioxide,"very low","1") 
data_wine$free.sulfur.dioxide<-str_replace(data_wine$free.sulfur.dioxide,"low","2")
data_wine$free.sulfur.dioxide<-str_replace(data_wine$free.sulfur.dioxide,"medium","3")
data_wine$free.sulfur.dioxide<-str_replace(data_wine$free.sulfur.dioxide,"very high","5")
data_wine$free.sulfur.dioxide<-str_replace(data_wine$free.sulfur.dioxide,"high","4")


data_wine$total.sulfur.dioxide<-str_replace(data_wine$total.sulfur.dioxide,"very low","1") 
data_wine$total.sulfur.dioxide<-str_replace(data_wine$total.sulfur.dioxide,"low","2")
data_wine$total.sulfur.dioxide<-str_replace(data_wine$total.sulfur.dioxide,"medium","3")
data_wine$total.sulfur.dioxide<-str_replace(data_wine$total.sulfur.dioxide,"very high","5")
data_wine$total.sulfur.dioxide<-str_replace(data_wine$total.sulfur.dioxide,"high","4")


data_wine$density<-str_replace(data_wine$density,"very low","1") 
data_wine$density<-str_replace(data_wine$density,"low","2")
data_wine$density<-str_replace(data_wine$density,"medium","3")
data_wine$density<-str_replace(data_wine$density,"very high","5")
data_wine$density<-str_replace(data_wine$density,"high","4")


data_wine$pH<-str_replace(data_wine$pH,"very low","1") 
data_wine$pH<-str_replace(data_wine$pH,"low","2")
data_wine$pH<-str_replace(data_wine$pH,"medium","3")
data_wine$pH<-str_replace(data_wine$pH,"very high","5")
data_wine$pH<-str_replace(data_wine$pH,"high","4")


data_wine$sulphates<-str_replace(data_wine$sulphates,"very low","1") 
data_wine$sulphates<-str_replace(data_wine$sulphates,"low","2")
data_wine$sulphates<-str_replace(data_wine$sulphates,"medium","3")
data_wine$sulphates<-str_replace(data_wine$sulphates,"very high","5")
data_wine$sulphates<-str_replace(data_wine$sulphates,"high","4")


data_wine$alcohol<-str_replace(data_wine$alcohol,"very low","1") 
data_wine$alcohol<-str_replace(data_wine$alcohol,"low","2")
data_wine$alcohol<-str_replace(data_wine$alcohol,"medium","3")
data_wine$alcohol<-str_replace(data_wine$alcohol,"very high","5")
data_wine$alcohol<-str_replace(data_wine$alcohol,"high","4")


data_wine$fixed.acidity<-str_replace(data_wine$fixed.acidity,"very low","1") 
data_wine$fixed.acidity<-str_replace(data_wine$fixed.acidity,"low","2")
data_wine$fixed.acidity<-str_replace(data_wine$fixed.acidity,"medium","3")
data_wine$fixed.acidity<-str_replace(data_wine$fixed.acidity,"very high","5")
data_wine$fixed.acidity<-str_replace(data_wine$fixed.acidity,"high","4")


data_wine$type<-str_replace(data_wine$type,"white","1")
data_wine$type<-str_replace(data_wine$type,"red","0")

#ep kieu du lieu

data_wine$type<- as.numeric(data_wine$type)
data_wine$fixed.acidity<- as.numeric(data_wine$fixed.acidity)
data_wine$volatile.acidity<- as.numeric(data_wine$volatile.acidity)
data_wine$citric.acid<- as.numeric(data_wine$citric.acid)
data_wine$residual.sugar<- as.numeric(data_wine$residual.sugar)
data_wine$chlorides<- as.numeric(data_wine$chlorides)
data_wine$free.sulfur.dioxide<- as.numeric(data_wine$free.sulfur.dioxide)
data_wine$total.sulfur.dioxide<- as.numeric(data_wine$total.sulfur.dioxide)
data_wine$density<- as.numeric(data_wine$density)
data_wine$pH<- as.numeric(data_wine$pH)
data_wine$sulphates<- as.numeric(data_wine$sulphates)
data_wine$alcohol<- as.numeric(data_wine$alcohol)

save_data_wine2<- data_wine
summary(data_wine)

write.csv(data_wine,"data_wine_ID3_convert.csv",row.names = FALSE)