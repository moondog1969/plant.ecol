rad.plot <- function(lat){
###(McCune and Keon 2002)
rhl<-function(slope,aspect,lat){
asp.wrap.rad<-sapply(aspect,function(x){(-1*abs(x-180))+180})
asp.wrap.hl<-sapply(aspect,function(x){abs(180-abs(x-225))})
rad.lat<-(lat/180)*pi
rad.asp<-sapply(asp.wrap.rad,function(x){(x/180)*pi})
hl.asp<-sapply(asp.wrap.hl,function(x){(x/180)*pi})
rad.slope<-sapply(slope,function(x){(x/180)*pi})
rad<-matrix(nrow=length(slope),ncol=1)
hl<-matrix(nrow=length(slope),ncol=1)
for(i in 1:length(slope)){
rad[i]<-0.339+0.808*(cos(rad.lat)*cos(rad.slope[i]))-0.196*(sin(rad.lat)*sin(rad.slope[i]))-0.482*(cos(rad.asp[i])*sin(rad.slope[i]))
hl[i]<-0.339+0.808*(cos(rad.lat)*cos(rad.slope[i]))-0.196*(sin(rad.lat)*sin(rad.slope[i]))-0.482*(cos(hl.asp[i])*sin(rad.slope[i]))
}
result<-list()
result$rad<-rad
result$hl<-hl
result
}


###generate surface--aspect
aspect.sur<-seq(0,359.5,.5)
rad.aspect<-sapply(aspect.sur,function(x){(x/180)*pi})

pos.f.deg<-function(r){
x<-matrix(ncol=1,nrow=720)
y<-matrix(ncol=1,nrow=720)
for(i in 1:720){
x[i]<-sin(rad.aspect[i])*r
y[i]<-cos(rad.aspect[i])*r
}
result<-list()
result$x<-x
result$y<-y
result
}

###generate surface--aspect
slope.sur<-matrix(nrow=720,ncol=90)
for(i in 1:90){
slope.sur[,i]<-rep(i/2,720)}

###aspects for each slope
xmatrix<-matrix(ncol=90,nrow=720)
ymatrix<-matrix(ncol=90,nrow=720)
for(i in 1:90){
xmatrix[,i]<-pos.f.deg((-i/2)+45)$x
ymatrix[,i]<-pos.f.deg((-i/2)+45)$y
}

##rad and heatload for surface
rad.sur<-matrix(nrow=720,ncol=90)
hl.sur<-matrix(nrow=720,ncol=90)
for(i in 1:90){
rad.sur[,i]<-rhl(slope.sur[,i],aspect=aspect.sur,lat=lat)$rad
}



#### probability and color categories
cl <- heat.colors(16)


rad.sur1<-apply(rad.sur,2,function(x){replace(x,x<=.01,cl[16])})
rad.sur2<-apply(rad.sur1,2,function(x){replace(x,x>.01&x<=.1,cl[15])})
rad.sur3<-apply(rad.sur2,2,function(x){replace(x,x>.1&x<=.2,cl[14])})
rad.sur4<-apply(rad.sur3,2,function(x){replace(x,x>.2&x<=.3,cl[13])})
rad.sur5<-apply(rad.sur4,2,function(x){replace(x,x>.3&x<=.4,cl[12])})
rad.sur6<-apply(rad.sur5,2,function(x){replace(x,x>.4&x<=.5,cl[11])})
rad.sur7<-apply(rad.sur6,2,function(x){replace(x,x>.5&x<=.6,cl[10])})
rad.sur8<-apply(rad.sur7,2,function(x){replace(x,x>.6&x<=.7,cl[9])})
rad.sur9<-apply(rad.sur8,2,function(x){replace(x,x>.7&x<.8,cl[8])})
rad.sur10<-apply(rad.sur9,2,function(x){replace(x,x>.8&x<=.9,cl[7])})
rad.sur11<-apply(rad.sur10,2,function(x){replace(x,x>.9&x<=1,cl[6])})
rad.sur12<-apply(rad.sur11,2,function(x){replace(x,x>1&x<=1.1,cl[5])})
rad.sur13<-apply(rad.sur12,2,function(x){replace(x,x>1.1&x<1.2,cl[4])})
rad.sur14<-apply(rad.sur13,2,function(x){replace(x,x>1.2&x<=1.3,cl[3])})
rad.sur15<-apply(rad.sur14,2,function(x){replace(x,x>1.3&x<=1.4,cl[2])})
rad.sur16<-apply(rad.sur15,2,function(x){replace(x,x>1.4,cl[1])})



################################

### initial plot
x<-seq(0,2*pi,.001)
par(mar=c(0,0,0,0))
init.plot<-plot(45*sin(x),45*cos(x),type="n",xlab="",ylab="",xaxt="n",yaxt="n",xlim=c(-50,75),ylim=c(-50,75),bty="n")

for(i in 1:90){
points(xmatrix[,i],ymatrix[,i],col=rad.sur16[,i],cex=.4,pch=15)}



lines(45*sin(x),45*cos(x),lty=1, col="gray")
lines(35*sin(x),35*cos(x),lty=2,col="gray")
lines(25*sin(x),25*cos(x),lty=2,col="gray")
text(0,-42,expression(0*degree),cex=.7)
text(0,-32,expression(10*degree),cex=.7)
text(0,-22,expression(20*degree),cex=.7)
text(0,0,expression(45*degree),cex=.7)
text(0,-50,"S",cex=.7)
text(0,50,"N",cex=.7)
text(50,0,"E",cex=.7)
text(-50,0,"W",cex=.7)

leg<-c(expression(paste(italic(H)<=.01)),expression(paste("0.01 < ",italic(H)<=0.1)),expression(paste("0.1 < ",italic(H)<=0.2)),
expression(paste("0.2 < ",italic(H)<=0.3)),expression(paste("0.3 < ",italic(H)<=0.4)),expression(paste("0.4 < ",italic(H)<=0.5)),expression(paste("0.5 < ",italic(H)<=0.6)),
expression(paste("0.6 < ",italic(H)<=0.7)),expression(paste("0.7 < ",italic(H)<=0.8)),expression(paste("0.8 < ",italic(H)<=0.9)),expression(paste("0.9 < ",italic(H)<=1.0)),
expression(paste("1.0 < ",italic(H)<=1.1)),expression(paste("1.1 < ",italic(H)<=1.2)),expression(paste("1.2 < ",italic(H)<=1.3)),expression(paste("1.3 < ",italic(H)<=1.4)), expression(paste(italic(H)>1.4)))

legend("topright",legend=leg,pch=15,col=cl[16:1],cex=.8,bty="n", title = expression(paste(italic(H)," = Incident rad. (",J/m^2/yr,")",sep="")), inset = .005)
legend("topleft", legend = bquote(paste("Latitude = ",.(lat), " degrees N")), cex = .8, inset = .05, bty = "n")

}



heat.plot <- function(lat){
###(McCune and Keon 2002)
rhl<-function(slope,aspect,lat){
asp.wrap.rad<-sapply(aspect,function(x){(-1*abs(x-180))+180})
asp.wrap.hl<-sapply(aspect,function(x){abs(180-abs(x-225))})
rad.lat<-(lat/180)*pi
rad.asp<-sapply(asp.wrap.rad,function(x){(x/180)*pi})
hl.asp<-sapply(asp.wrap.hl,function(x){(x/180)*pi})
rad.slope<-sapply(slope,function(x){(x/180)*pi})
rad<-matrix(nrow=length(slope),ncol=1)
hl<-matrix(nrow=length(slope),ncol=1)
for(i in 1:length(slope)){
rad[i]<-0.339+0.808*(cos(rad.lat)*cos(rad.slope[i]))-0.196*(sin(rad.lat)*sin(rad.slope[i]))-0.482*(cos(rad.asp[i])*sin(rad.slope[i]))
hl[i]<-0.339+0.808*(cos(rad.lat)*cos(rad.slope[i]))-0.196*(sin(rad.lat)*sin(rad.slope[i]))-0.482*(cos(hl.asp[i])*sin(rad.slope[i]))
}
result<-list()
result$rad<-rad
result$hl<-hl
result
}


###generate surface--aspect
aspect.sur<-seq(0,359.5,.5)
rad.aspect<-sapply(aspect.sur,function(x){(x/180)*pi})

pos.f.deg<-function(r){
x<-matrix(ncol=1,nrow=720)
y<-matrix(ncol=1,nrow=720)
for(i in 1:720){
x[i]<-sin(rad.aspect[i])*r
y[i]<-cos(rad.aspect[i])*r
}
result<-list()
result$x<-x
result$y<-y
result
}

###generate surface--aspect
slope.sur<-matrix(nrow=720,ncol=90)
for(i in 1:90){
slope.sur[,i]<-rep(i/2,720)}

###aspects for each slope
xmatrix<-matrix(ncol=90,nrow=720)
ymatrix<-matrix(ncol=90,nrow=720)
for(i in 1:90){
xmatrix[,i]<-pos.f.deg((-i/2)+45)$x
ymatrix[,i]<-pos.f.deg((-i/2)+45)$y
}

##rad and heatload for surface
rad.sur<-matrix(nrow=720,ncol=90)
for(i in 1:90){
rad.sur[,i]<-rhl(slope.sur[,i],aspect=aspect.sur,lat=lat)$hl
}



#### probability and color categories
cl <- heat.colors(16)


rad.sur1<-apply(rad.sur,2,function(x){replace(x,x<=.01,cl[16])})
rad.sur2<-apply(rad.sur1,2,function(x){replace(x,x>.01&x<=.1,cl[15])})
rad.sur3<-apply(rad.sur2,2,function(x){replace(x,x>.1&x<=.2,cl[14])})
rad.sur4<-apply(rad.sur3,2,function(x){replace(x,x>.2&x<=.3,cl[13])})
rad.sur5<-apply(rad.sur4,2,function(x){replace(x,x>.3&x<=.4,cl[12])})
rad.sur6<-apply(rad.sur5,2,function(x){replace(x,x>.4&x<=.5,cl[11])})
rad.sur7<-apply(rad.sur6,2,function(x){replace(x,x>.5&x<=.6,cl[10])})
rad.sur8<-apply(rad.sur7,2,function(x){replace(x,x>.6&x<=.7,cl[9])})
rad.sur9<-apply(rad.sur8,2,function(x){replace(x,x>.7&x<.8,cl[8])})
rad.sur10<-apply(rad.sur9,2,function(x){replace(x,x>.8&x<=.9,cl[7])})
rad.sur11<-apply(rad.sur10,2,function(x){replace(x,x>.9&x<=1,cl[6])})
rad.sur12<-apply(rad.sur11,2,function(x){replace(x,x>1&x<=1.1,cl[5])})
rad.sur13<-apply(rad.sur12,2,function(x){replace(x,x>1.1&x<1.2,cl[4])})
rad.sur14<-apply(rad.sur13,2,function(x){replace(x,x>1.2&x<=1.3,cl[3])})
rad.sur15<-apply(rad.sur14,2,function(x){replace(x,x>1.3&x<=1.4,cl[2])})
rad.sur16<-apply(rad.sur15,2,function(x){replace(x,x>1.4,cl[1])})



################################

### initial plot

x<-seq(0,2*pi,.001)
par(mar=c(0,0,0,0))
init.plot<-plot(45*sin(x),45*cos(x),type="n",xlab="",ylab="",xaxt="n",yaxt="n",xlim=c(-50,75),ylim=c(-50,75),bty="n")

for(i in 1:90){
points(xmatrix[,i],ymatrix[,i],col=rad.sur16[,i],cex=.4,pch=15)}



lines(45*sin(x),45*cos(x),lty=1, col="gray")
lines(35*sin(x),35*cos(x),lty=2,col="gray")
lines(25*sin(x),25*cos(x),lty=2,col="gray")
text(0,-42,expression(0*degree),cex=.7)
text(0,-32,expression(10*degree),cex=.7)
text(0,-22,expression(20*degree),cex=.7)
text(0,0,expression(45*degree),cex=.7)
text(0,-50,"S",cex=.7)
text(0,50,"N",cex=.7)
text(50,0,"E",cex=.7)
text(-50,0,"W",cex=.7)

leg<-c(expression(paste(italic(H)<=.01)),expression(paste("0.01 < ",italic(H)<=0.1)),expression(paste("0.1 < ",italic(H)<=0.2)),
expression(paste("0.2 < ",italic(H)<=0.3)),expression(paste("0.3 < ",italic(H)<=0.4)),expression(paste("0.4 < ",italic(H)<=0.5)),expression(paste("0.5 < ",italic(H)<=0.6)),
expression(paste("0.6 < ",italic(H)<=0.7)),expression(paste("0.7 < ",italic(H)<=0.8)),expression(paste("0.8 < ",italic(H)<=0.9)),expression(paste("0.9 < ",italic(H)<=1.0)),
expression(paste("1.0 < ",italic(H)<=1.1)),expression(paste("1.1 < ",italic(H)<=1.2)),expression(paste("1.2 < ",italic(H)<=1.3)),expression(paste("1.3 < ",italic(H)<=1.4)), expression(paste(italic(H)>1.4)))

legend("topright",legend=leg,pch=15,col=cl[16:1],cex=.8,bty="n", title = expression(paste(italic(H)," = Heatload index")), inset=.005)
legend("topleft", legend = bquote(paste("Latitude = ",.(lat), " degrees N")), cex = .8, inset = .05, bty = "n")
}


