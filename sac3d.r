hist(trees$Height, breaks = 10, col = "brown", main = "Histogram of Tree Heights",xlab="Height bin")

hist(trees$Height,breaks = 10,col = "pink",main = "histogram of tree height with kernal density plot",xlab="height bin",prob=TRUE)
lines(density(trees$Height),lwd=2,col="red")

attach(trees)
plot(Girth,Height,main="scatterplot of girth vs height", xlab="Tree Girth",ylab="tree height")
abline(lm(Height~Girth),col="blue",lwd=2)

attach(trees)
plot(Girth,Height,main="scatterplot of girth vs height",xlab = "tree gitrh",ylab="tree height")
abline(lm(Height~Girth),col="blue",lwd=2)

plot(Girth,Volume,main="scatter lot of girth vs volume", xlab="tree girth ",ylab="tree volume")
abline(lm(Volume~Girth),col="blue",lwd=2)

pairs(trees,main="scatter plot matrix for trees data set")

install.packages("scatterplot3d") #install
library("scatterplot3d")

library(scatterplot3d)
attach(trees)
scatterplot3d(Girth,Height,Volume,main="3d scatter plot for trees data set")

