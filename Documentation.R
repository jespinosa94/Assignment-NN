##Preparation of the workspace##
install.packages("neuralnet")
require(neuralnet)
?neuralnet

##Preparation of the data##
handwriting <- read.csv("handwriting.csv")
dim(handwriting)
str(handwriting)
handwriting_train <- handwriting[1:3596, ]
handwriting_test <- handwriting[3596:4495,]

##training of the model##
nn <- neuralnet(X0.26 ~ X0.0625 + X0.375 + X0.9375 + X0.75 + X0.0625.1 + X0 + X0.1
                + X0.2 + X0.4375 + X1 + X0.375.1 + X0.375.2 + X0.625 + X0.3 + X0.4
                + X0.6 + X0.5 + X1.1 + X0.125 + X0.7 + X0.6875 + X0.125.1 + X0.8
                + X0.9 + X0.3125 + X1.2 + X0.1875 + X0.10 + X0.3125.1 + X0.4375.1
                + X0.11 + X0.12 + X0.4375.2 + X0.8125 + X0.1875.1 + X0.13 + X0.5.1
                + X0.4375.3 + X0.14 + X0.25 + X0.75.1 + X0.15 + X0.0625.2 + X0.8125.1
                + X0.3125.2 + X0.16 + X0.17 + X0.18 + X0.875 + X0.5625 + X0.9375.1
                + X0.5625.1 + X0.19 + X0.20 + X0.21 + X0.22 + X0.375.3 + X0.875.1
                + X0.4375.4 + X0.0625.3 + X0.23 + X0.24,
                data = handwriting_train)
nn
plot(nn)

nn3 <- neuralnet(X0.26 ~ X0.0625 + X0.375 + X0.9375 + X0.75 + X0.0625.1 + X0 + X0.1
                 + X0.2 + X0.4375 + X1 + X0.375.1 + X0.375.2 + X0.625 + X0.3 + X0.4
                 + X0.6 + X0.5 + X1.1 + X0.125 + X0.7 + X0.6875 + X0.125.1 + X0.8
                 + X0.9 + X0.3125 + X1.2 + X0.1875 + X0.10 + X0.3125.1 + X0.4375.1
                 + X0.11 + X0.12 + X0.4375.2 + X0.8125 + X0.1875.1 + X0.13 + X0.5.1
                 + X0.4375.3 + X0.14 + X0.25 + X0.75.1 + X0.15 + X0.0625.2 + X0.8125.1
                 + X0.3125.2 + X0.16 + X0.17 + X0.18 + X0.875 + X0.5625 + X0.9375.1
                 + X0.5625.1 + X0.19 + X0.20 + X0.21 + X0.22 + X0.375.3 + X0.875.1
                 + X0.4375.4 + X0.0625.3 + X0.23 + X0.24,
                 data = handwriting_train, hidden = 8, stepmax = 8e+05)
nn3
plot(nn3)
nn3$result.matrix

nn2 <- neuralnet(X0.26 ~ X0.0625 + X0.375 + X0.9375 + X0.75 + X0.0625.1 + X0 + X0.1
                + X0.2 + X0.4375 + X1 + X0.375.1 + X0.375.2 + X0.625 + X0.3 + X0.4
                + X0.6 + X0.5 + X1.1 + X0.125 + X0.7 + X0.6875 + X0.125.1 + X0.8
                + X0.9 + X0.3125 + X1.2 + X0.1875 + X0.10 + X0.3125.1 + X0.4375.1
                + X0.11 + X0.12 + X0.4375.2 + X0.8125 + X0.1875.1 + X0.13 + X0.5.1
                + X0.4375.3 + X0.14 + X0.25 + X0.75.1 + X0.15 + X0.0625.2 + X0.8125.1
                + X0.3125.2 + X0.16 + X0.17 + X0.18 + X0.875 + X0.5625 + X0.9375.1
                + X0.5625.1 + X0.19 + X0.20 + X0.21 + X0.22 + X0.375.3 + X0.875.1
                + X0.4375.4 + X0.0625.3 + X0.23 + X0.24,
                data = handwriting_train, hidden = c(2,3), stepmax = 10e+05, 
                threshold = 0.05)
nn2
plot(nn2)
nn2$result.matrix
nn2$covariate
handwriting_train$X0.26
nn2$net.result[[1]]

