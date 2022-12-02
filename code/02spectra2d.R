
setwd("~/git_repos/2211-polyploidy-seminar/")

dat <- read.table("data/EarcEang.binCounts")
head(dat)

clJMats <- matrix(0, nrow=max(dat[,2]) + 1, ncol=max(dat[,3]) + 1)

for(j in 1:nrow(dat)){
  clJMats[dat[j, 2] + 1, dat[j, 3] + 1] <- dat[j, 1]
}
plotJMat <- function(jMat, ...){
  image(0:(nrow(jMat)-1), 0:(ncol(jMat)-1), jMat, asp=1, ...)
}
plotJMat(clJMats)
plotMatCont <- function(jMat,xlab="Copy number bins An1",...){
  plotJMat(log(jMat),
           col = "#FFFFFF",
           xaxt='n',
           yaxt='n',
           xlab=xlab,
           ...
  )
  abline(v=lin2bin(c(10, 100, 1000, 10000, 100000, 1000000)), col="grey")
  abline(h=lin2bin(c(10, 100, 1000, 10000, 100000, 1000000)), col="grey")
  plotJMat(log(jMat), col = (rainbow(30)), add=T)
  abline(0,1)
  abline(v=lin2bin(c(1, 2, 4)), col="grey", lty=2)
  abline(h=lin2bin(c(1, 2, 4)), col="grey", lty=2)
  contJMat(log10(jMat),
           xaxt='n',
           yaxt='n',
           add=T,
           drawlabels=F
  )
  ticks = c(1, 2, 4, 10, 100, 1000, 10000, 100000, 1000000)
  axis(1, at = lin2bin(ticks), labels = c("1", "2", "4", "10", "100", "1000", "10,000", "100,000", "1,000,000"))
  axis(2, at = lin2bin(ticks), labels = c("1", "2", "4", "10", "100", "1000", "10,000", "100,000", "1,000,000"))
}
lin2bin <- function(x){
  return(floor(log(x/0.5)/log(1.1)) + 1)
}
contJMat <- function(jMat, ...){
  contour(0:(nrow(jMat)-1), 0:(ncol(jMat)-1), jMat, asp=1, ...)
}
pdf("results/EarcEang.pdf", height=5.5, width=5)
plotMatCont(clJMats, xlab="E. arctica (4x)", ylab="E. anglica (2x)")
dev.off()
