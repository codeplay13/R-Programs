train = data[1:20,]
test = data[21:30,1:14]

#install.packages("neuralnet")

library(neuralnet)

net = neuralnet(train$BL+train$LWL+train$HWL~AF3+F7+F3+FC5+T7+P7+O1+O2+P8+T8+FC6+F4+F8+AF4, train, hidden = 8, rep = 10, algorithm = "rprop+", linear.output = FALSE)

net

c = test[1:10,]
j = compute(net, c)$net.result



plot(net)