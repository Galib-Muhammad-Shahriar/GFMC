# Prepare Data
data <- binary_zoo_test
str(data)
data$animal_namex <- factor(data$animal)
# Partition data into Training and Validation datasets
set.seed(1234)
pd <- sample(2,nrow(data),replace = TRUE, prob= c(0.8,0.2))
train <- data[pd==1,]
validate <- data[pd==2,]

# Decision Tree with party

library(party)
tree <- ctree(animal_namex~length+weight+temp+heartbeat+res_rate+feather+tooth+milk+egg+acuatic+flying+speed,data=train)


plot(tree)

predict(tree,validate)
#Decision tree with rpart
library(rpart)
library(rpart.plot)

tree1<-rpart(animal_namex~length+weight+temp+heartbeat+res_rate+feather+tooth+milk+egg+acuatic+flying+speed,train)
rpart.plot(tree1,extra = 4)

#Misclassification Error for training Data

tab <-table(predict(tree),train$animal_namex)
print(tab)

error<-1-sum(diag(tab))/sum(tab)

#Misclassification Error for training Data

testPred<- predict(tree,newdata=validate)
tab<-table(testPred,validate$animal_namex)
print(tab)
error<-1-sum(diag(tab))/sum(tab)