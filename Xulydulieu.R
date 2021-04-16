#load du lieu
data_wine<- read.csv("winequalityN.csv")


#xem tinh tong quan cua du lieu
summary(data_wine)
#nhu vay la da co dong bi na 
#viec bay h se phai xu ly chung
#cong viec la thay the chung voi mot gia tri chung binh

data_wine$fixed.acidity[is.na(data_wine$fixed.acidity)]<-mean(data_wine$fixed.acidity,na.rm = TRUE)
data_wine$volatile.acidity[is.na(data_wine$volatile.acidity)]<-mean(data_wine$volatile.acidity,na.rm=TRUE)
data_wine$citric.acid[is.na(data_wine$citric.acid)]<-mean(data_wine$citric.acid,na.rm = TRUE)
data_wine$residual.sugar[is.na(data_wine$residual.sugar)]<-mean(data_wine$residual.sugar,na.rm = TRUE)
data_wine$chlorides[is.na(data_wine$chlorides)]<-mean(data_wine$chlorides,na.rm=TRUE)
data_wine$pH[is.na(data_wine$pH)]<-mean(data_wine$pH,na.rm = TRUE)
data_wine$sulphates[is.na(data_wine$sulphates)]<-mean(data_wine$sulphates,na.rm = TRUE)
#check xem kiem tra xem da xu ly Na het chua
colSums(is.na.data.frame(data_wine))

#bay h chung ta se thay doi nhan cua du lieu

#chung ta gap mot van de la cac so be hon 1 covert bi loi, minh se nhan cac o co cac chi so be hon mot
i_cot<- colnames(data_wine)
i_cot<- i_cot[2:12]
be_cot<-i_cot[c(2,3,5,8,10)]

for(i in be_cot)
{
  data_wine[i]<- data_wine[i]*10
}
data_wine[be_cot[3]]<-data_wine[be_cot[3]]*10
data_wine[be_cot[3]]<-data_wine[be_cot[3]]*10
for (i in i_cot)
{
  mot<- data_wine[i]%>%
    quantile(na.rm=TRUE, probs = 0.2)
  hai<-data_wine[i]%>%
    quantile(na.rm=TRUE, probs = 0.4)
  ba<-data_wine[i]%>%
    quantile(na.rm=TRUE, probs = 0.6)
  bon<-data_wine[i]%>%
    quantile(na.rm=TRUE, probs = 0.8)
  
  data_wine[data_wine[i]<mot,i]<- 1
  data_wine[data_wine[i]>=mot & data_wine[i]<hai,i]<-2
  data_wine[data_wine[i]>=hai & data_wine[i]<ba,i]<-3
  data_wine[data_wine[i]>=ba & data_wine[i]<bon,i]<-4
  data_wine[data_wine[i]>=bon,i]<- 5
}


#bay h se loai bo cac cot co so dong giong nhau
data_wine<- data_wine%>%
  distinct()
#----------------------------------------
#bay h se doi ten sang dang chuoi
#luu tam mot bien data_wine
data_wine$fixed.acidity<- as.character(data_wine$fixed.acidity)
data_wine$volatile.acidity<- as.character(data_wine$volatile.acidity)
data_wine$citric.acid<- as.character(data_wine$citric.acid)
data_wine$residual.sugar<- as.character(data_wine$residual.sugar)
data_wine$chlorides<- as.character(data_wine$chlorides)
data_wine$free.sulfur.dioxide<- as.character(data_wine$free.sulfur.dioxide)
data_wine$total.sulfur.dioxide<- as.character(data_wine$total.sulfur.dioxide)
data_wine$density<- as.character(data_wine$density)
data_wine$pH<- as.character(data_wine$pH)
data_wine$sulphates<- as.character(data_wine$sulphates)
data_wine$alcohol<- as.character(data_wine$alcohol)
data_wine$quality<- as.character(data_wine$quality)




#sau do ta doi ten du lieu
#doi ten nhan dau tien
data_wine$quality<-str_replace(data_wine$quality,"0|1|2|3|4","low") 
data_wine$quality<-str_replace(data_wine$quality,"5|6","medium")
data_wine$quality<-str_replace(data_wine$quality,"7|8","high")
data_wine$quality<-str_replace(data_wine$quality,"9|10","best")

data_wine$volatile.acidity<-str_replace(data_wine$volatile.acidity,"1","very low") 
data_wine$volatile.acidity<-str_replace(data_wine$volatile.acidity,"2","low")
data_wine$volatile.acidity<-str_replace(data_wine$volatile.acidity,"3","medium")
data_wine$volatile.acidity<-str_replace(data_wine$volatile.acidity,"4","high")
data_wine$volatile.acidity<-str_replace(data_wine$volatile.acidity,"5","very high")

data_wine$citric.acid<-str_replace(data_wine$citric.acid,"1","very low") 
data_wine$citric.acid<-str_replace(data_wine$citric.acid,"2","low")
data_wine$citric.acid<-str_replace(data_wine$citric.acid,"3","medium")
data_wine$citric.acid<-str_replace(data_wine$citric.acid,"4","high")
data_wine$citric.acid<-str_replace(data_wine$citric.acid,"5","very high")

data_wine$residual.sugar<-str_replace(data_wine$residual.sugar,"1","very low") 
data_wine$residual.sugar<-str_replace(data_wine$residual.sugar,"2","low")
data_wine$residual.sugar<-str_replace(data_wine$residual.sugar,"3","medium")
data_wine$residual.sugar<-str_replace(data_wine$residual.sugar,"4","high")
data_wine$residual.sugar<-str_replace(data_wine$residual.sugar,"5","very high")

data_wine$chlorides<-str_replace(data_wine$chlorides,"1","very low") 
data_wine$chlorides<-str_replace(data_wine$chlorides,"2","low")
data_wine$chlorides<-str_replace(data_wine$chlorides,"3","medium")
data_wine$chlorides<-str_replace(data_wine$chlorides,"4","high")
data_wine$chlorides<-str_replace(data_wine$chlorides,"5","very high")

data_wine$free.sulfur.dioxide<-str_replace(data_wine$free.sulfur.dioxide,"1","very low") 
data_wine$free.sulfur.dioxide<-str_replace(data_wine$free.sulfur.dioxide,"2","low")
data_wine$free.sulfur.dioxide<-str_replace(data_wine$free.sulfur.dioxide,"3","medium")
data_wine$free.sulfur.dioxide<-str_replace(data_wine$free.sulfur.dioxide,"4","high")
data_wine$free.sulfur.dioxide<-str_replace(data_wine$free.sulfur.dioxide,"5","very high")

data_wine$total.sulfur.dioxide<-str_replace(data_wine$total.sulfur.dioxide,"1","very low") 
data_wine$total.sulfur.dioxide<-str_replace(data_wine$total.sulfur.dioxide,"2","low")
data_wine$total.sulfur.dioxide<-str_replace(data_wine$total.sulfur.dioxide,"3","medium")
data_wine$total.sulfur.dioxide<-str_replace(data_wine$total.sulfur.dioxide,"4","high")
data_wine$total.sulfur.dioxide<-str_replace(data_wine$total.sulfur.dioxide,"5","very high")

data_wine$density<-str_replace(data_wine$density,"1","very low") 
data_wine$density<-str_replace(data_wine$density,"2","low")
data_wine$density<-str_replace(data_wine$density,"3","medium")
data_wine$density<-str_replace(data_wine$density,"4","high")
data_wine$density<-str_replace(data_wine$density,"5","very high")

data_wine$pH<-str_replace(data_wine$pH,"1","very low") 
data_wine$pH<-str_replace(data_wine$pH,"2","low")
data_wine$pH<-str_replace(data_wine$pH,"3","medium")
data_wine$pH<-str_replace(data_wine$pH,"4","high")
data_wine$pH<-str_replace(data_wine$pH,"5","very high")

data_wine$sulphates<-str_replace(data_wine$sulphates,"1","very low") 
data_wine$sulphates<-str_replace(data_wine$sulphates,"2","low")
data_wine$sulphates<-str_replace(data_wine$sulphates,"3","medium")
data_wine$sulphates<-str_replace(data_wine$sulphates,"4","high")
data_wine$sulphates<-str_replace(data_wine$sulphates,"5","very high")

data_wine$alcohol<-str_replace(data_wine$alcohol,"1","very low") 
data_wine$alcohol<-str_replace(data_wine$alcohol,"2","low")
data_wine$alcohol<-str_replace(data_wine$alcohol,"3","medium")
data_wine$alcohol<-str_replace(data_wine$alcohol,"4","high")
data_wine$alcohol<-str_replace(data_wine$alcohol,"5","very high")

data_wine$fixed.acidity<-str_replace(data_wine$fixed.acidity,"1","very low") 
data_wine$fixed.acidity<-str_replace(data_wine$fixed.acidity,"2","low")
data_wine$fixed.acidity<-str_replace(data_wine$fixed.acidity,"3","medium")
data_wine$fixed.acidity<-str_replace(data_wine$fixed.acidity,"4","high")
data_wine$fixed.acidity<-str_replace(data_wine$fixed.acidity,"5","very high")

#buoc tiep theo loai bo cac dong bi trung nhau do viec thay doi nhan
data_wine<- data_wine%>%
  distinct()
#buoc cuoi xao tron du lieu
set.seed(2000)
save_data_wine<- data_wine
rows<-sample(nrow(data_wine))
data_wine<- data_wine[rows,]
save_data_wine1<- data_wine
write.csv(data_wine,"data_wine_ID3.csv",row.names = FALSE)



