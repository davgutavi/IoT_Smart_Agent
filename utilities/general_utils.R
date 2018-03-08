


tdf <- function(df,names){
  
  series <- setNames(data.frame(t(df[,-1])), df[,1])
  measure <- data.frame(measure = names)
  s<- cbind(measure, series)
  return(s)
  
}

tdfWn <- function(df){
  
  aux<- cbind(centroid = c(1:NROW(df)), df)
  nnames<-NCOL(aux)-1
  names <- 1:nnames
  n<- tdf(aux,names)
  return(n)
  
}

fromStringToNumberDF<-function(df){
  
  a <- data.frame(as.numeric(df[,1]))
  colnames(a)[1]<-names(df)[1]
  
  for (i in 2:ncol(df)){
    
    
    a<-cbind(a,as.numeric(df[,i]))
    colnames(a)[i]<-names(df)[i]
    
  }
  
  return(a)
  
}

pop.var <- function(x)
  var(x) * (length(x) - 1) / length(x)

pop.sd <- function(x)
  sqrt(pop.var(x))

maxNorm<-function(x,mx=max(x)){
  return(x/mx)
}

minMaxNorm <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

num_of_digits <- function(number) {
  return(length(as.numeric(strsplit(
    as.character(number), ""
  )[[1]])))
}

getFolderName <- function(folderPath) {
  aux <- strsplit(folderPath, split = "/", fixed = T)
  r <- aux[[1]][length(aux[[1]])]
  return(r)
  
}

getNumericVector <- function(ft) {
  v <- as.vector(ft)
  e <- strsplit(v[1], " ", fixed = T)
  n <- c()
  for (i in e[[1]]) {
    n <- c(n, as.numeric(i))
  }
  return(n)
}



getCsvPath <- function(folderPath) {
  content <- dir(folderPath, full.names = T)
  res <- ""
  enc <- F
  j <- 1
  while (enc != T && j <= length(content)) {
    
    fn <- content[j]
    aux1 <- strsplit(fn, split = "/", fixed = T)
    
    aux2 <- aux1[[1]] [length(aux1[[1]])]
    
    aux3 <- strsplit(aux2, split = "-", fixed = T)
    
    if (aux3[[1]][1] == "part") {
      res <- fn
      enc <- T
    }
    
    else{
      j <- j + 1
    }
    
  }
  return (res)
}

getCsvPathFromList <- function(folderPathVector) {
    
    res<-c()
  
    for(el in folderPathVector){
      res<-append(res,getCsvPath(el))
    }
  
   return (res)
}




