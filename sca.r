attach(trees)
plot(Girth,Height,main="scatterplot of girth vs height",xlab = "tree gitrh",ylab="tree height")
abline(lm(Height~Girth),col="blue",lwd=2)
