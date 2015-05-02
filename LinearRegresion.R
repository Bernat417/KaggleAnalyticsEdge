
#Read the Train and Test files
Train = read.csv("NYTimesBlogTrain.csv", stringsAsFactors=FALSE)
Test = read.csv("NYTimesBlogTest.csv", stringsAsFactors=FALSE)

#Generate the Linear Regresion and predict the results
SimpleLR = glm(Popular ~ WordCount, data=Train, family=binomial)
Prediction = predict(SimpleLR, newdata=Test, type="response")

#Print the result
Submission = data.frame(UniqueID = Test$UniqueID, Probability1 = Prediction)
write.csv(Submission, "SimpleLR.csv", row.names=FALSE)

