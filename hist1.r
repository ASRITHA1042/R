hist(trees$Height,breaks = 10,col = "pink",main = "histogram of tree height with kernal density plot",xlab="height bin",prob=TRUE)
lines(density(trees$Height),lwd=2,col="red")
