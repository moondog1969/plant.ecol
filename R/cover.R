cover <- function(Y,cat) 
{cat<-as.matrix(cat)
maxf<-as.matrix(as.numeric(as.factor(cat)))
cat<-as.factor(cat)
cvr<-matrix(0,nrow=ncol(Y),ncol=max(maxf), dimnames = list(c(colnames(Y)), c(levels(cat))))
for (i in levels(cat)) {
  tmp <- Y[cat==i,]
  cvr[,i]<-apply(tmp,2,mean)
}
as.matrix(cvr)
}