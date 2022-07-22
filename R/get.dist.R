get.dist<-function(data, method, minkowski.power = 2){
indices <- c( "matching", "rogers", "jaccard.pa", "sorensen", "kulkczynski.pa", 
  "ochiai", "gower", "bray", "kulkczynski.q", "jaccard.q", "euclidean", 
 "rel.euclidean", "manhattan", "czekanowski", "whittaker", "canberra", 
 "chi.metric","chi.dist", "hellinger", "morisita", "morisita.horn", "minkowski", "mountford", 
 "raup.crick", "binomial", "chao")
method <- match.arg(method, indices)

chi.metric<-function(data){
col.sum<-apply(data,2,sum)
row.sum<-apply(data,1,sum)
new<-data/row.sum
e<-matrix(nrow=nrow(new),ncol=nrow(new))
for(i in 1:nrow(new)){
for(j in 1:nrow(new)){
e[i,j]<-sqrt(sum(((new[i,]-new[j,])^2)/col.sum))
}}
chi.m<-as.dist(e)
chi.m
}

################################

chi.dist<-function(data){
col.sum<-apply(data,2,sum)
row.sum<-apply(data,1,sum)
new<-data/row.sum
e<-matrix(nrow=nrow(new),ncol=nrow(new))
for(i in 1:nrow(new)){
for(j in 1:nrow(new)){
e[i,j]<-sqrt(sum(data))*sqrt(sum(((new[i,]-new[j,])^2)/col.sum))
}}
chi.d<-as.dist(e)
chi.d
}

#################################

if(method=="matching"){
mat<-designdist(data, method = "(A+B-2*J)/P",terms="binary",abcd =TRUE,name="matching")}

if(method=="rogers"){
mat<-designdist(data, method = "(2*b + 2*c)/(a+2*b+2*c+d)",terms="binary",abcd =TRUE,name="rogers")}

if(method=="jaccard.pa"){
mat<-designdist(data, method = "(A+B-2*J)/(J+A+B-2*J)",terms="binary",abcd =TRUE,name="jaccard.pa")}

if(method=="sorensen"){
mat<-designdist(data, method = "(A+B-2*J)/(A+B)",terms="binary",abcd =TRUE,name="sorensen")}

if(method=="kulkczynski.pa"){
mat<-designdist(data, method = "(A+B-3*J)/(A+B-2*J)",terms="binary",abcd =TRUE,name="kulkczynski.pa")}

if(method=="ochiai"){
mat<-designdist(data, method = "(sqrt((A)*(B))-J)/sqrt((A)*(B))",terms="binary",abcd =TRUE,name="ochiai")}

if(method=="gower"){
mat<-vegdist(data,"gower")}

if(method=="bray"){
mat<-vegdist(data,"bray")}

if(method=="kulkczynski.q"){
mat<-vegdist(data,"kulc")}

if(method=="jaccard.q"){
mat<-vegdist(data,"jaccard")}

if(method=="euclidean"){
mat<-vegdist(data,"euclidean")}

if(method=="rel.euclidean"){
mat<-designdist(data, method = "sqrt(2*(1-(J/(A*B))))",terms="quadratic",name="rel.euclidean")}

if(method=="mahalanobis"){
mat<-mahalanobis(t(data), colMeans(t(data)),cov(t(data)))}

if(method=="manhattan"){
mat<-dist(data,method="manhattan")} 

if(method=="czekanowski"){
mat<-(1/ncol(data))*dist(data,method="manhattan")} 

if(method=="whittaker"){
new.data<-data/rowSums(data)
mat<-0.5*(dist(new.data,method="manhattan"))}

if(method=="canberra"){
mat<-vegdist(data,"canberra")}

if(method=="chi.metric"){
mat<-chi.metric(data)}

if(method=="chi.dist"){
mat<-chi.dist(data)}

if(method=="hellinger"){
mat<-dist(decostand(data,"hellinger"))}

if(method=="morisita"){
mat<-vegdist(data,"morisita")}

if(method=="morisita.horn"){
mat<-vegdist(data,"horn")}

if(method=="minkowski"){
mat<-dist(data,method="minkowski",p=minkowski.power)}

if(method=="mountford"){
mat<-vegdist(data,"mountford")}

if(method=="raup.crick"){
mat<-vegdist(data,"raup")}

if(method=="binomial"){
mat<-vegdist(data,"binomial")}

if(method=="chao"){
mat<-vegdist(data,"chao")}
mat
}
