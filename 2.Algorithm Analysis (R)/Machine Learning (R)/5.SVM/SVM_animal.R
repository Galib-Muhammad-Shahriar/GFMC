#Support Vector Machine

install.packages("e1071")
install.packages("ggplot2")
library(e1071)
library(ggplot2)
set.seed(1)
data<-binary_zoo_test_svm_binaryLogic
str(data)
qplot(length,weight,data=binary_zoo_test_svm_binaryLogic,color=animal)

#Support Vector Machine starts:
mymodel <- svm(animal~.,data = binary_zoo_test_svm_binaryLogic,
               kernel = "radial")
summary(mymodel)
plot(mymodel, data = binary_zoo_test_svm_binaryLogic,
     length~weight,
     slice = list(temp=3,heartbeat=4,res_rate=5,feather=6,tooth=7,milk=8,egg=9,acuatic=10,flying=11,speed=12))


#Confusion Matrix & Misclasssification Error

pred <- predict(mymodel, binary_zoo_test_svm_binaryLogic)
tab<-table (Predicted=pred,Actual= binary_zoo_test_svm_binaryLogic$animal)
tab
error<-1-sum(diag(tab))/sum(tab)

#Tuning
set.seed(123)
tmodel<- tune(svm,animal~.,data=binary_zoo_test_svm_binaryLogic,
              ranges = list(epsilon=seq(0,1,0.1),cost=2^(2:9)))
plot(tmodel)
summary(tmodel)

#Best Model
mymodel<- tmodel$best.model
summary(mymodel)

plot(mymodel, data = binary_zoo_test_svm_binaryLogic,
     length~weight,
     slice = list(temp=3,heartbeat=4,res_rate=5,feather=6,tooth=7,milk=8,egg=9,acuatic=10,flying=11,speed=12))

#Confusion Matrix for best model & Misclasssification Error

pred <- predict(mymodel, binary_zoo_test_svm_binaryLogic)
tab<-table (Predicted=pred,Actual= binary_zoo_test_svm_binaryLogic$animal)
tab
error<-1-sum(diag(tab))/sum(tab)
