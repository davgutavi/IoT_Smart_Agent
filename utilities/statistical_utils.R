# Accumulated series----
accSeries <- function(listOfVectorsOfFilePaths) {
  
  expS <- list(accBatchSeries(listOfVectorsOfFilePaths[[1]]))
  
  for (i in c(2:length(listOfVectorsOfFilePaths))) {
    expS[[i]] <- accBatchSeries(listOfVectorsOfFilePaths[[i]])
  }

  return(expS)
}

accBatchSeries <- function(vectorsOfFilePaths) {
  
  bs<-getBatchSeries(vectorsOfFilePaths[1])
  
  acc<-list(bs)
  
  for (i in c(2:length(vectorsOfFilePaths))) {
    
    aux<-getBatchSeries(vectorsOfFilePaths[i])
    
    acc1<-c(acc[[i-1]]$s,aux$s)
    acc2<-acc[[i-1]]$nlp+aux$nlp
    acc[[i]]<-list(s=acc1,nlp=acc2)
    
  }
  
  maxValue<-max(acc[[length(acc)]]$s)
  
  r<-list(list(s=acc[[1]]$s,ns=maxNorm(acc[[1]]$s,maxValue),nlp=acc[[1]]$nlp))
  
  for (i in c(2:length(acc))) {
    
    r[[i]]<-  list(s=acc[[i]]$s,ns=maxNorm(acc[[i]]$s,maxValue),nlp=acc[[i]]$nlp)
  }
  
  return(r)
}

getBatchSeries <- function (datasetPath) {
  df <- read.csv(datasetPath, sep = ",", header = F)
  
  series <- getNumericVector(df[1, 2])
  
  for (i in c(1:nrow(df))) {
    y <- df[i, 1]
    series <- c(series, y)
  }
  
  return(list(s=series,nlp=nrow(df)))
}









# Statistical measures----
experimentMeasures <- function(accSeries) {
  
  measures <- list(windowMeasures(accSeries[[1]]))
  
  for (i in c(2:length(accSeries))) {
    measures[[i]] <- windowMeasures(accSeries[[i]])
  }
  
  return(measures)
}

windowMeasures <- function(expSeries) {
  
  measures <- list(getMeasures(expSeries[[1]]))
  
  for (i in c(2:length(expSeries))) {
    measures[[i]] <- getMeasures(expSeries[[i]])
  }
  
  return(measures)
}

getMeasures <- function(series) {
  
  # print(series$npl)
  
  r<-list(
    mean = mean(series$s),
    median = median(series$s),
    stdev = pop.sd(series$s),
    nmean = mean(series$ns),
    nmedian = median(series$ns),
    nstdev = pop.sd(series$ns),
    npts = length(series$s),
    nlp = series$nlp
    
  )
  
  # print(r)
  return(r)
}


# Statistical dataframes----
statisticalDfs<-function(){
  
  light.statistics.accseries<- accSeries(paths.light.files.training)
  light.statistics.measures<-experimentMeasures(light.statistics.accseries)
  
  lightDf <- statisticalDf(light.statistics.measures,experiment.names[1])
  print("Light DF built")
  
  pressure.statistics.accseries<- accSeries(paths.pressure.files.training)
  pressure.statistics.measures<- experimentMeasures(pressure.statistics.accseries)
  
  pressureDf <- statisticalDf(pressure.statistics.measures,experiment.names[2])
  print("Pressure DF built")
  
  temperature.statistics.accseries<- accSeries(paths.temperature.files.training)
  temperature.statistics.measures<- experimentMeasures(temperature.statistics.accseries)
  
  temperatureDf <- statisticalDf(temperature.statistics.measures,experiment.names[3])
  print("Temperature DF built")
  
  r<- list(light=lightDf,pressure=pressureDf,temperature=temperatureDf)
  
  return(r)
}


statisticalDf<-function(measures,exptype){
  
  df<-statisticalStudy(measures[[1]])
  df<-cbind(data.frame(window=rep.int(window.values[1],nrow(df))),df)
  
  for (i in c(2:length(measures))){
    aux<-statisticalStudy(measures[[i]])
    aux<-cbind(data.frame(window=rep.int(window.values[i],nrow(aux))),aux)
    df<-bind_rows(df,aux)
  }
  
  df<-cbind(experiment=rep.int(exptype,nrow(df)),df)
  
}

statisticalStudy<-function(window_measures){
  
  st<-data.frame(nlp=window_measures[[1]]$nlp,
                 npts=window_measures[[1]]$npts,
                 nstdev=window_measures[[1]]$nstdev,
                 nmp=window_measures[[1]]$nmean+window_measures[[1]]$nstdev,
                 nmean=window_measures[[1]]$nmean,
                 nmm=window_measures[[1]]$nmean-window_measures[[1]]$nstdev
                 
  )
  
  for (i in c(2:length(window_measures))){
    
    st<-bind_rows(st,data.frame(nlp=window_measures[[i]]$nlp,
                                npts=window_measures[[i]]$npts,
                                nstdev=window_measures[[i]]$nstdev,
                                nmp=window_measures[[i]]$nmean+window_measures[[i]]$nstdev,
                                nmean=window_measures[[i]]$nmean,
                                nmm=window_measures[[i]]$nmean-window_measures[[i]]$nstdev
                                
    ))
    
  }
  
  return(st)
  
}

# Graphs----
stdevGraph<-function(listOfStatisticalDf){
  
  light<-listOfStatisticalDf$light
  pressure<-listOfStatisticalDf$pressure
  temperature<-listOfStatisticalDf$temperature
  
  df<-bind_rows(light,pressure,temperature)[,c(-4,-5)]
  
  ndf<- melt(df,id.vars=c(1,2,3))
  
  gr<-ggplot(ndf, aes(x = nlp, y = value, linetype = variable)) +
    geom_line() +
    facet_grid(window ~ experiment,labeller = label_both,scales="free",switch = "y")+
    scale_linetype_manual(values = c("dotted","solid","dashed"),labels=c(labels.statistic.meanpstdev,labels.statistic.mean,labels.statistic.meanmstdev))+
    labs(y = labels.statistic.normalizedvalue, x=labels.general.numberoflabeledpoints) +
    theme_minimal() + 
    theme(panel.border = element_rect(color="black", fill=NA), 
          strip.background = element_rect(fill=NA, color="black"),
          axis.title = element_text(size = 5, face = "bold"),
          axis.text = element_text(size = 4),
          strip.text = element_text(size = 4),
          legend.title=element_blank(),
          legend.text = element_text(size = 5)
    )
  
  return(gr)
  
}

boxGraph<-function(rawValuesDf, ylabel = "values"){
  
  gr<-ggplot(rawValuesDf, aes(x = "", y = value))+
    stat_boxplot(geom ="errorbar")+
    geom_boxplot(outlier.colour = "blue", outlier.shape = 1) + 
    stat_summary(fun.y=mean, geom="point", shape=20, size=5, color="red", fill="red") +
    labs(x="",y=ylabel) +
    theme(axis.text.y   = element_text(size=8),
          axis.title.y  = element_text(size=8))
  
  return(gr)
}

histogramGraph<-function(rawValuesDf, xlabel = "values",binwidth = 45){
  
  gr<- ggplot(rawValuesDf, aes(value)) + 
    geom_histogram(binwidth = binwidth) + 
    labs(y="",x=xlabel) +
    theme(axis.text.y   = element_text(size=8),
          axis.title.y  = element_text(size=8),
          axis.text.x   = element_text(size=8),
          axis.title.x  = element_text(size=8))
  
  return(gr)
}


paretoGraph <- function(x, by = 50, right = FALSE){
  
  breaks = seq(min(x), max(x), by = by )
  ecd = ecdf(x)
  den = ecd(breaks)
  table = table(cut(x, breaks = breaks, right = right))
  table = table/sum(table)
  intervs = factor(names(table), levels = names(table))
  freq = as.numeric(table/sum(table))
  acum = as.numeric(cumsum(table))

  dados = data.frame(classe = intervs, freq = freq, acum = acum, acum_norm = minMaxNorm(acum))
  
  p = ggplot(dados) + 
    geom_bar(aes(classe, freq, fill = classe), stat = 'identity') +
    geom_point(aes(classe, acum_norm, group = '1'), shape = I(1), size = I(3), colour = 'gray20') +
    geom_line(aes(classe, acum_norm, group = '1'), colour = I('gray20'))+
    labs(x="interval",y="frequency")+
    theme(axis.text.y   = element_text(size=8),
          axis.title.y  = element_text(size=8),
          axis.title.x  = element_text(size=8),
          legend.position="none",
          axis.text.x = element_text(size=8,angle = 90, hjust = 1))
    
  return(p)
}


# Legacy----
getExperimentAccSeries <- function(experimentPath) {
  
  windowPaths <- dir(experimentPath, full.names = T)
  
  print(paste0(windowPaths[1], "/pre_training"))
  experimentSeries <-
    list(getWindowAccBatchSeries(paste0(windowPaths[1], "/pre_training")))
  
  for (i in c(2:length(windowPaths))) {
    print(paste0(windowPaths[i], "/pre_training"))
    
    experimentSeries[[i]] <-
      getWindowAccBatchSeries(paste0(windowPaths[i], "/pre_training"))
    
  }
  return(experimentSeries)
}


getWindowAccBatchSeries <- function(windowPreTrainingPath) {
  
  datasetPaths <- dir(windowPreTrainingPath, full.names = T)
  
  bs<-getBatchSeries(datasetPaths[1])
  
  acc<-list(bs)
  
  for (i in c(2:length(datasetPaths))) {
    
    aux<-getBatchSeries(datasetPaths[i])
    
    acc1<-c(acc[[i-1]]$s,aux$s)
    acc2<-acc[[i-1]]$nlp+aux$nlp
    acc[[i]]<-list(s=acc1,nlp=acc2)
    
  }
  
  maxValue<-max(acc[[length(acc)]]$s)
  
  r<-list(list(s=acc[[1]]$s,ns=maxNorm(acc[[1]]$s,maxValue),nlp=acc[[1]]$nlp))
  
  for (i in c(2:length(acc))) {
    
    r[[i]]<-  list(s=acc[[i]]$s,ns=maxNorm(acc[[i]]$s,maxValue),nlp=acc[[i]]$nlp)
  }
  
  
  return(r)
}

grReStdev<-function(windowIndex,experiment_measures,experiment_results){
  
  window_meaures<-experiment_measures[[windowIndex]]
  window_measure_study<-stdevStudy(window_meaures)
  experiment_error_study<-getErrorStudy(experiment_results)
  window_error_study<-experiment_error_study[,c(1,(windowIndex+1))]
  nlp_re_stdev_study<-experimentWindowReStdevGraph(window_error_study,window_measure_study)
  ndf <- melt(nlp_re_stdev_study, "nlp")
  return(ggplot(ndf, aes(
    x = nlp,
    y = value,
    group = variable,
    color = variable
  )) +
    geom_line() +
    labs(y = "relative error") +
    theme(
      axis.text = element_text(size = 8),
      axis.title = element_text(size = 8, face = "bold"),
      legend.text = element_text(size = 8, face = "bold"),
      legend.title = element_text(size = 8, face = "bold")
    ))
}

windowExperimentGraph<-function(stdevDataFrame){
  gr<-ggplot(stdevDataFrame, aes(x = nlp,y = nstdev)) +
    geom_line() +
    facet_grid(window ~ .,labeller = label_both,switch = "both",scales="free")+
    labs(y = "normalized stdev", x="#lp") +
    theme_minimal() + 
    theme(panel.border = element_rect(color="black", fill=NA), 
          strip.background = element_rect(fill=NA, color="black"),
          axis.title = element_text(size = 5, face = "bold"),
          axis.text = element_text(size = 4),
          strip.text = element_text(size = 5)
    ) 
  return(gr)
}

completeStdevStudyGr<-function(lux_measures,temperature_measures,pressure_measures){
  lux<-getStdDf(lux_measures,"lux")
  temp<-getStdDf(temperature_measures,"temperature")
  press<-getStdDf(pressure_measures,"pressure")
  
  df<-bind_rows(lux,temp,press)
  
  gr<-ggplot(df, aes(x = nlp,y = nstdev)) +
    geom_line() +
    facet_grid(window ~ experiment,labeller = label_both,scales="free")+
    labs(y = "normalized stdev", x="#lp") +
    theme_minimal() + 
    theme(panel.border = element_rect(color="black", fill=NA), 
          strip.background = element_rect(fill=NA, color="black"),
          axis.title = element_text(size = 5, face = "bold"),
          axis.text = element_text(size = 4),
          strip.text = element_text(size = 5)
    ) 
  
  return(gr)
}
