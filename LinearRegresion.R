
#Read the Train and Test files
Train = read.csv("NYTimesBlogTrain.csv", stringsAsFactors=FALSE)
Test = read.csv("NYTimesBlogTest.csv", stringsAsFactors=FALSE)

#Generate the Linear Regresion and predict the results
SimpleLR = glm(Popular ~ WordCount, data=NewsTrain, family=binomial)
Prediction = predict(SimpleLR, newdata=NewsTest, type="response")

#Print the result
Submission = data.frame(UniqueID = NewsTest$UniqueID, Probability1 = Prediction)
write.csv(Submission, "SimpleLR.csv", row.names=FALSE)
