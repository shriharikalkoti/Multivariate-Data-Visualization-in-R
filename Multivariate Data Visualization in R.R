#import data set 
install.packages("ggplot2") 
library("ggplot2") 
library("readxl") 
mydata=read_excel("D:/Hari/temp/multivariate.xlsx") 

mydata

#Plot objects with 3 attributes using 2D graph

ggplot(mydata, aes(Weight, Height, size =Maxtemp)) + geom_point(alpha = .6) + 
 labs(title = " Friends contact data set by Weight, Height, Maxtemp")


#Plot objects with 3 attributes using 2D graph
ggplot(mydata, aes(Weight, Height, colour = Company)) + geom_point(alpha = 3) + 
labs(title = " Friends contact data set by Weight, Height, Company")

#Plot objects with 4 attributes using 2D graph

ggplot(mydata, aes(Weight, Height, colour = Company, size =Maxtemp)) + geom_point(alpha = .6) + labs(title = " Friends contact data set by Weight, Height, Maxtemp, Company")

#Plot objects with 3 attributes using 3D graph
install.packages("plot3D")
library(plot3D)
scatter3D(x = mydata$Weight, y = mydata$Height, z = mydata$Maxtemp, bty = "f", colkey = FALSE, main ="Friends contact data set by Weight, Height, Maxtemp,")

#Plot objects with 6 attributes: Maximum Temperature, Weight, Height, year, Gender 
and Company using parallel coordinates plot

install.packages("GGally") 
library(GGally) 

ggparcoord(data = mydata, columns = 2:6, groupColumn = "Company")

#Visualize friends contact data set using Chernoff faces

install.packages("aplpack") 
library(aplpack) 
faces(mydata[,2:5], face.type=1, scale=TRUE, main="Friends Contact Data Set", 
labels=mydata$Contact, print.info=TRUE)
