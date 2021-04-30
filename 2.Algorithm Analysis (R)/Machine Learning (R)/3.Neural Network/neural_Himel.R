# Data
#getwd()
#data <- read.csv("binary_zoo_test_deep_human.csv", header = TRUE)
data <- binary_zoo_test_deep_human
str(data)

# Min-Max Normalization
data$length <- (data$length - min(data$length))/(max(data$length) - min(data$length))
data$weight <- (data$weight - min(data$weight))/(max(data$weight) - min(data$weight))
data$temp <- (data$temp - min(data$temp))/(max(data$temp)-min(data$temp))
data$heartbeat <- (data$heartbeat - min(data$heartbeat))/(max(data$heartbeat) - min(data$heartbeat))
data$res_rate <- (data$res_rate - min(data$res_rate))/(max(data$res_rate) - min(data$res_rate))
data$feather <- (data$rank - min(data$rank))/(max(data$rank)-min(data$rank))
data$tooth <- (data$gre - min(data$gre))/(max(data$gre) - min(data$gre))
data$milk <- (data$gpa - min(data$gpa))/(max(data$gpa) - min(data$gpa))
data$egg <- (data$rank - min(data$rank))/(max(data$rank)-min(data$rank))
data$acuatic <- (data$gre - min(data$gre))/(max(data$gre) - min(data$gre))
data$flying <- (data$gpa - min(data$gpa))/(max(data$gpa) - min(data$gpa))
data$speed <- (data$speed - min(data$speed))/(max(data$speed)-min(data$speed))

# Data Partition
set.seed(222)
ind <- sample(2, nrow(data), replace = TRUE, prob = c(0.7, 0.3))
training <- data[ind==1,]
testing <- data[ind==2,]

# Neural Networks
library(neuralnet)
set.seed(333)
n <- neuralnet(animal~length+weight+temp+heartbeat+res_rate+feather+tooth+beck+egg+acuatic+flying+speed,
               data = training,
               hidden = 5,
               err.fct = "ce",
               linear.output = FALSE)
plot(n)

# Prediction
output <- compute(n, training[,-1])
head(output$net.result)
head(training[1,])

# #Node Output Calculations with Sigmoid Activation Function
#in4 <- 0.0455 + (0.82344*0.7586206897) + (1.35186*0.8103448276) + (-0.87435*0.6666666667)
#out4 <- 1/(1+exp(-in4))
#in5 <- -7.06125 +(8.5741*out4)
#out5 <- 1/(1+exp(-in5))

# Confusion Matrix & Misclassification Error - training data
output <- compute(n, training[,-1])
p1 <- output$net.result
pred1 <- ifelse(p1>0.5, 1, 0)
tab1 <- table(pred1, training$animal)
tab1
error<-1-sum(diag(tab1))/sum(tab1)

# Confusion Matrix & Misclassification Error - testing data
output <- compute(n, testing[,-1])
p2 <- output$net.result
pred2 <- ifelse(p2>0.5, 1, 0)
tab2 <- table(pred2, testing$animal)
tab2
error<-1-sum(diag(tab2))/sum(tab2)
