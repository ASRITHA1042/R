plot(Girth,type="o",col="red",ylab="",ylim=c(0,110),main="comparision among height, volume and girth of trees")
lines(Height,type="o",col="blue")
lines(Volume,type = "o",col="green")
legend(1,110,legend = c("Girth","Height","volume"),col=c("red","blue","green"),lty=1:1,cex=0.9)


