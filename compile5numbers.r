#!/usr/bin/R
#
# usage:
#      Rscript compile5numbers.r data_file.txt
#
## reading the data
#
args <- commandArgs(TRUE)
if(any(args=="-prefix")) j = which(args=="-prefix")
if(!any(args=="-prefix")){
prefix = "my_"
}else{
prefix = paste(args[j+1],"_",sep="")
}
data <- read.table(args[1], head=T, sep = "\t", na.strings="")
## Required libraries
require(plyr)
require(reshape)
#
## This is the function written by Paulo Inacio Prado
#

kma <- function(x, file=paste(prefix,"out.csv", sep=""), save=TRUE, group=FALSE, plot=TRUE, ...){
    ######
    ##Acessory functions
    f1=function(x){
        y <- boxplot(x, plot=FALSE)
        c(y$stats, y$n)
    }
    f2 <- colwise(f1)
    ######
df <- aggregate(x[-(1:2)], by=list(ind=x[,1], group=x[,2]), mean, na.rm=TRUE)
    if(!group){
        #df <- aggregate(x[-(1:2)], by=list(ind=x[,1]), mean, na.rm=TRUE)
        tab <- f2(df[-(1:2)])
        if(plot) {
                svg(file=paste("./", prefix, "boxplot%03d.svg", sep=""), height=5, width=4)
                boxplot(df[-(1:2)], ...)
                dev.off()
            }
    }
    else {
        
        tab <- ddply(df[,-1], .(group), f2)
        if(plot) {
            svg(file=paste("./", prefix, "boxplot%03d.svg", sep=""), height=5, width=4, onefile=FALSE)
            for(i in 3:(ncol(df))){
                boxplot(df[,i] ~ df[,2], main=names(df)[i], ...)
            }
            dev.off()
        }
    }
    tab$stats <- c("LowerValue", "1stQ", "Median", "3rdQ", "UpperValue", "N")
tab$stats <- factor(tab$stats, levels= c("LowerValue", "1stQ", "Median", "3rdQ", "UpperValue", "N"))
    suppressMessages(tmp <- melt(tab))
    tab2 <- cast(tmp, ... ~ variable)
    if(save) write.csv(tab2, file=file)
    return(tab2)
}


kma(data, group=(any(args=="-groups")), plot=(any(args=="-boxplot")))
