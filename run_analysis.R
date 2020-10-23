library(dplyr)
library(data.table) 

#importing
Xtestdata=read.table("test/X_test.txt")
Xtraindata=read.table("train/X_train.txt")

#merging
fullX=rbind(Xtestdata,Xtraindata)
fetu=read.table("features.txt")
names(fullX)=fetu$V2

#taking means and std
means=colMeans(fullX)
stds=sapply(fullX,sd)
out = data.table(names(fullX),means,stds)

#adding activities
AccTest=read.table("test/Y_test.txt")
AccTrain=read.table("train/Y_train.txt")
Acclist=read.table("activity_labels.txt")
Acclist=c(Acclist$V2)

#MERGING
AccNum=rbind(AccTest,AccTrain)
fullX$Activity=c(AccNum$V1)
fullX$Activity=factor(fullX$Activity,labels = Acclist)
DT=as.data.table(fullX)
Data=DT[,mean(DT[[1]]) ,by=Activity]

#STEP 5
for (i in 2:ncol(DT)-1){
  A=DT[,mean(DT[[i]]) ,by=Activity]
  Data=cbind(Data,A$V1)
}
names(Data)[2:ncol(Data)]=fetu$V2
write.table(Data,"Data.txt",row.names = FALSE)
