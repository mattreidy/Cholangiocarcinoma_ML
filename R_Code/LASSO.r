Data <- read.csv("G:/my drive/machine learning/Cholangiocarcinoma_ML/Data_Files/cancer_mutations.txt" , sep="\t", header=TRUE)
# Lasso 
table(Data$cancer_type)

library(tidyverse)
library(caret)
library(glmnet)

x <- model.matrix(cancer_type~., Data)[,-1]
y <- Data[,which(names(Data) %in% c("cancer_type"))]
set.seed(123) 
cv.lasso <- cv.glmnet(x, y, alpha = 1, family = "binomial") #binomial_multinomial
plot(cv.lasso)
cv.lasso$lambda.min
cv.lasso$lambda.1se
coef(cv.lasso, cv.lasso$lambda.min)
Coef <- coef(cv.lasso, cv.lasso$lambda.min)
write.csv(x = as.matrix(Coef), file = "G:/my drive/machine learning/Cholangiocarcinoma_ML/Data_Files/LASSO_Coef.csv", row.names = TRUE)
Coef
CoefData <- read.csv("G:/my drive/machine learning/Cholangiocarcinoma_ML/Data_Files/LASSO_Coef.csv", header=TRUE)
colnames(CoefData) <- c("Gene","Coef")
CoefData = CoefData[-1,]