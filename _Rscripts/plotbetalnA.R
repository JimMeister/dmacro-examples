library(ggplot2)
beta = 0.999
betas = c(0.98,0.99,0.994)
mua = 0.003
T = 1500
vlnA = cumsum(rep(mua,T)) #assumes first ln(A) equal to zero

seriesvalue = vector()
for(i in 1:length(betas)){
  beta = betas[i]
  vbeta = cumprod(rep(beta,T))
  seriesvalue = rbind(seriesvalue , cumsum(vbeta*vlnA))
}

tsseries = as.ts(t(seriesvalue))

plot(tsseries, plot.type="single", col=c('red', 'blue', 'green'), ylab=expression(sum(beta^t * ln(A), t==0,N)), xlab="N")

#par(omd = c(.15, .85, .15, .85))

par(mgp = c(0, 2, 0), cex.lab=0.9)
legend(0,80, c(expression(beta==0.98),expression(beta==0.99),expression(beta==0.994)), col=c('red', 'blue', 'green'), lty=1)

