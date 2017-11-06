library(tseries)

#Guggenheim S&P 500 Equal Weight 
RSPdata<-get.hist.quote('rsp',quote="Close")
RSPret<-log(lag(RSPdata))-log(RSPdata)
RSPvol<-sd(RSPret)*sqrt(250)*100

Vol<-function(d, logrets){
  var=0
  lam=0
  varlist<-c()
  for (r in logrets){
    lam=lam*(1-1/d)+1
    var=(1-1/lam)*var+(1/lam)*r^2
    varlist<-c(varlist, var)
  }
  sqrt(varlist)
}

#Recreate Figure 6.12 in the test on page 155
volest<-Vol(10, RSPret)
volest2<-Vol(30, RSPret)
volest3<-Vol(100, RSPret)
plot(volest, type="l")
lines(volest2, type="l", col="red")
lines(volest3, type="l", col="blue")

