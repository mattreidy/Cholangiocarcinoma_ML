#install.packages("corrplot")
#install.packages("Hmisholangc")
#install.packages("GGally")
library("corrplot")
library("Hmisc")
library("reshape2")
library("GGally")

mydata = read.csv("G:/My Drive/Machine Learning/cBioPortal/all_data_mutations_only.csv" , header=TRUE)
mydata <- mydata[,colSums(is.na(mydata))<nrow(mydata)]
mydata[is.na(mydata)] <- 0
mydata.cor.pearson = cor(mydata, method = c("pearson"))
mydata.rcorr = rcorr(as.matrix(mydata))
mydata.coeff = mydata.rcorr$r
mydata.p = mydata.rcorr$P

#drop duplicates and correlations of 1
mydata.cor.pearson[lower.tri(mydata.cor.pearson,diag=TRUE)] <- NA
mydata.cor.pearson[mydata.cor.pearson == 1] <- NA
#turn into a 3-column table and remove the NA values
mydata.cor.pearson <- as.data.frame(as.table(mydata.cor.pearson))
mydata.cor.pearson <- na.omit(mydata.cor.pearson) 
#select significant values and sort by highest correlation
mydata.cor.pearson <- subset(mydata.cor.pearson, abs(Freq) >= .5) 
mydata.cor.pearson <- mydata.cor.pearson[order(-abs(mydata.cor.pearson$Freq)),] 
#write data to file
write.csv(mydata.cor.pearson, "G:/My Drive/Machine Learning/cBioPortal/all_data_mutations_only.cor.pearson.csv")
#turn corr back into matrix and plot
mtx_corr <- reshape2::acast(mydata.cor.pearson, Var1~Var2, value.var="Freq")
mtx_corr[is.na(mtx_corr)] <- 0
corrplot(mtx_corr, is.corr=FALSE, tl.col="black", na.label=" ")
ggcorr(mtx_corr, method = c("everything", "pearson")) 
palette = colorRampPalette(c("green", "white", "red")) (20)
heatmap(x = mydata.coeff, col = palette, symm = TRUE)
heatmap(x = mydata.coeff, col = palette)
heatmap(x = mydata.coeff)





