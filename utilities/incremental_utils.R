# re----
getErrorGraphByExpAndPpi <- function(experiment, ppi = 1,ylimits=c(0,100)) {
  expStudy <- getErrorStudy(experiment, ppi)
  expGr <- getBatchReLineGraphByStudy(expStudy,ylimits)
  return(expGr)
}


#' getErrorStudy
#' 
#' @param experimentSources Resultados de experimento incremental
#' @param predictedPointIndex Labeled Point que se quiere representar de entre todo el fichero de test
#'
#' @return Data frame con las columnas: npl, w_90, w_180, w_360, w_720, w_1080, error relativo en tanto por uno
#' @export
#'
#' @examples
getErrorStudy <-function(experimentSources, predictedPointIndex = 1) {
  df <- getNlpColumn(experimentSources)
  df <-
    cbind(df, data.frame(
      getOneReSeries(experimentSources[[1]]$results, predictedPointIndex)
    ))
  names(df)[2] = paste0("w_", experimentSources[[1]]$general$num_features)
  
  for (i in c(2:length(experimentSources))) {
    df <-
      cbind(df, data.frame(
        getOneReSeries(experimentSources[[i]]$results, predictedPointIndex)
      ))
    names(df)[i + 1] = paste0("w_", experimentSources[[i]]$general$num_features)
    
  }
  
  return(df)
}


getBatchReLineGraphByStudy <- function(study,ylimits=c(0,100)) {
  ndf <- melt(study, "nlp")
  
  ndf$value<-ndf$value*100
  
  # print(ndf)
  gr <- ggplot(ndf, aes(x = nlp,y = value,group = variable, color = variable)) +
    geom_line() +
    labs(y = "relative error (%)", x="#lp") +
    scale_y_continuous(oob=squish,limits=ylimits,na.value=ylimits[2])+
    theme(
      axis.text = element_text(size = 5),
      axis.title = element_text(size = 5, face = "bold"),
      legend.text = element_text(size = 5, face = "bold"),
      legend.title = element_text(size = 5, face = "bold")
    )
  
  return(gr)
  
}

getNlpColumn <- function(experimentSources) {
  df <- data.frame(nlp = experimentSources[[1]]$results[[1]]$nlp)
  
  for (i in c(2:length(experimentSources[[1]]$results))) {
    df <-
      bind_rows(df, data.frame(nlp = experimentSources[[1]]$results[[i]]$nlp))
    
  }
  return(df)
}


getOneReSeries <- function(windowResults, predictedPointIndex = 1) {
  df <-
    data.frame(re = windowResults[[1]]$predicted$re[[predictedPointIndex]])
  
  for (i in c(2:length(windowResults))) {
    df <-
      bind_rows(df, data.frame(re = windowResults[[i]]$predicted$re[[predictedPointIndex]]))
    
  }
  
  return(df)
}







# re grid----

getExperimentWindowNlplRe<-function(baseType,point=1){
  
  if (baseType=="re1"){
    
    rl<-light.results.object.re1config
    rp<-pressure.results.object.re1config
    rt<-temperature.results.object.re1config
    
  }
  else if (baseType=="mre"){
    rl<-light.results.object.mreconfig
    rp<-pressure.results.object.mreconfig
    rt<-temperature.results.object.mreconfig
  }
  
  dfl<-getPointWnlpReFromPredictions(rl,point)
  dfl<-cbind(experiment=rep("light",nrow(dfl)),dfl)
  dfp<-getPointWnlpReFromPredictions(rp,point)
  dfp<-cbind(experiment=rep("pressure",nrow(dfp)),dfp)
  dft<-getPointWnlpReFromPredictions(rt,point)
  dft<-cbind(experiment=rep("temperature",nrow(dft)),dft)
  
  df<-bind_rows(dfl,dfp,dft)
  
  return(df)
  
  
}

getPointWnlpReFromPredictions<-function(experimentPredictions,point=1){
  
  wi<-1
  
  df<-cbind(data.frame(w=rep(window.values[wi],length(length(experimentPredictions[[wi]]$results))),getPointNlpReFromWindow(experimentPredictions[[wi]],point)))
  
  for (wi in c(2:length(experimentPredictions))){
    
    aux<-cbind(data.frame(w=rep(window.values[wi],length(length(experimentPredictions[[wi]]$results))),getPointNlpReFromWindow(experimentPredictions[[wi]],point)))
    df<-bind_rows(df,aux)  
    
  }
  return(df)
  
}


getPointNlpReFromWindow<-function(windowExperiment,point=1){
  
  ri<-1
  
  df<-data.frame(nlp = windowExperiment$results[[ri]]$nlp,re=windowExperiment$results[[ri]]$predicted$re[[point]])
  
  for (ri in c(2:length(windowExperiment$results))){
    
    aux<-data.frame(nlp=windowExperiment$results[[ri]]$nlp,re=windowExperiment$results[[ri]]$predicted$re[[point]])
    df<-bind_rows(df,aux)
    
  }
  
  return(df)
  
}

graphReIncrementalGrid<-function(experimentWindowNlplReDf,ylimits=NULL){
  
  frame<-experimentWindowNlplReDf
  
  nr<- length(experiment.names)
  nc<- length(window.names)
  
  gr<-ggplot(frame, aes(x = nlp,y = re*100)) +
    geom_line() +
    # facet_grid(experiment~w,labeller = label_both,switch = "y",scales="free")+
    facet_wrap(experiment~w,labeller = label_both,scales="free",nrow = nr,ncol = nc)+
    scale_y_continuous(oob=squish,limits=ylimits,na.value=ylimits[2])+
    labs(y = "relative error (%)", x="#lp") +
    theme_minimal() + 
    theme(panel.border = element_rect(color="black", fill=NA), 
          strip.background = element_rect(fill=NA, color="black"),
          axis.title = element_text(size = 5, face = "bold"),
          axis.text = element_text(size = 4),
          strip.text = element_text(size = 3),
          axis.text.x = element_text(angle = 90, hjust = 0.5)
    ) 
  
  return(gr)
}


# mre----
getMreGraphByExpAndPpi <- function(experiment, ppi = 1, ylimits=c(0,100)) {
  expStudy <- getMreStudy(experiment, ppi)
  expGr <- getBatchMreLineGraphByStudy(expStudy,ylimits)
  return(expGr)
}

getMreStudy <-function(experimentSources, predictedPointIndex = 1) {
  df <- getNlpColumn(experimentSources)
  df <-cbind(df, data.frame(getOneMreSeries(experimentSources[[1]]$results, predictedPointIndex)))
  
  names(df)[2] = paste0("w_", experimentSources[[1]]$general$num_features)
  
  for (i in c(2:length(experimentSources))) {
    df <-cbind(df, data.frame(getOneMreSeries(experimentSources[[i]]$results, predictedPointIndex)))
    names(df)[i + 1] = paste0("w_", experimentSources[[i]]$general$num_features)
  }
  
  return(df)
}

getOneMreSeries <- function(windowResults, predictedPointIndex = 1) {
  
  df <- data.frame(mre = mean(windowResults[[1]]$predicted$re))
  
  for (i in c(2:length(windowResults))) {
    df <- bind_rows(df, data.frame(mre = mean(windowResults[[i]]$predicted$re)))
  }
  
  return(df)
}

getBatchMreLineGraphByStudy <- function(study,ylimits=c(1,100)) {
  
  ndf <- melt(study, "nlp")
 
  gr <- ggplot(ndf, aes(x = nlp,y = value*100,group = variable, color = variable)) +
    geom_line() +
    labs(y = "mean relative error (%)", x="#lp") +
    scale_y_continuous(oob=squish,limits=ylimits,na.value=ylimits[2])+
    # ylim(min(ndf$value),max(ndf$value))+
    theme(
      axis.text = element_text(size = 5),
      axis.title = element_text(size = 5, face = "bold"),
      legend.text = element_text(size = 5, face = "bold"),
      legend.title = element_text(size = 5, face = "bold")
    )
  
  return(gr)
  
}


# mre grid----

getExperimentWindowNlplMre<-function(baseType){
  
  if (baseType=="re1"){
    
    rl<-light.results.object.re1config
    rp<-pressure.results.object.re1config
    rt<-temperature.results.object.re1config
    
  }
  else if (baseType=="mre"){
    rl<-light.results.object.mreconfig
    rp<-pressure.results.object.mreconfig
    rt<-temperature.results.object.mreconfig
  }
  
  dfl<-getWindowNlplMre(rl)
  dfl<-cbind(experiment=rep("light",nrow(dfl)),dfl)
  dfp<-getWindowNlplMre(rp)
  dfp<-cbind(experiment=rep("pressure",nrow(dfp)),dfp)
  dft<-getWindowNlplMre(rt)
  dft<-cbind(experiment=rep("temperature",nrow(dft)),dft)
  
  df<-bind_rows(dfl,dfp,dft)
  
  return(df)
  
}



getWindowNlplMre<-function(experimentPredictions){
  
  wi<-1
  
  
  df<-cbind(
    
    data.frame(w=rep(window.values[wi],length(experimentPredictions[[wi]]$results)))
    
    ,getNplMre(experimentPredictions[[wi]])
    
    )
  
  for (wi in c(2:length(experimentPredictions))){
    
    aux<-cbind(
      
      data.frame(w=rep(window.values[wi],length(experimentPredictions[[wi]]$results)))
      
      ,getNplMre(experimentPredictions[[wi]])
      
    )
    df<-bind_rows(df,aux)  
    
  }
  
  return(df)
  
}




getNplMre<-function(windowExperiment){
  
  ri<-1
  
  df<-data.frame(nlp=windowExperiment$results[[ri]]$nlp,mre=mean(windowExperiment$results[[ri]]$predicted$re))
  
  for (ri in c(2:length(windowExperiment$results))){
    aux<-data.frame(nlp=windowExperiment$results[[ri]]$nlp,mre=mean(windowExperiment$results[[ri]]$predicted$re))
    df<-bind_rows(df,aux)
    
  }
  
  return(df)
  
}

graphMreIncrementalGrid<-function(experimentWindowNlplMreDf,ylimits=NULL){
  
  frame<-experimentWindowNlplMreDf
  
  nr<- length(experiment.names)
  nc<- length(window.names)
  
  gr<-ggplot(frame, aes(x = nlp,y = mre*100)) +
    geom_line() +
    facet_grid(experiment~w,labeller = label_both,switch = "y",scales="free")+
    # scale_y_continuous(oob=squish,limits=ylimits,na.value=ylimits[2])+
    facet_wrap(experiment~w,labeller = label_both,scales="free",nrow = nr,ncol = nc)+
    labs(y = "mean relative error (%)", x="#lp") +
    theme_minimal() + 
    theme(panel.border = element_rect(color="black", fill=NA), 
          strip.background = element_rect(fill=NA, color="black"),
          axis.title = element_text(size = 5, face = "bold"),
          axis.text = element_text(size = 4),
          strip.text = element_text(size = 3),
          axis.text.x = element_text(angle = 90, hjust = 0.5)
    ) 
  
  return(gr)
}


# IJCIS ----
getExpDf<-function(var, baseType){
  
  if (baseType=="re1" && var =="p"){
    res<-pressure.results.object.re1config
  }
  else if (baseType=="mre" && var =="p"){
    res<-pressure.results.object.mreconfig
  }
  else if (baseType=="re1" && var =="t"){
    res<-temperature.results.object.re1config
  }
  else if (baseType=="mre" && var =="t"){
    res<-temperature.results.object.mreconfig
  }
  
  df<-getWindowNlplMre(res)
  
  return(df)
  
}

grInclGrid<-function(experimentWindowNlplMreDf,ylimits=NULL,nr=2,nc=5){
  
  frame<-experimentWindowNlplMreDf
  
  wlabs <- c("w = 3","w = 4","w = 6","w = 12","w = 24","w = 90","w = 180","w = 360","w = 720","w = 1080") 
  names(wlabs) <- c(3,4,6,12,24,90,180,360,720,1080)
 
  fs <- 7
  
   gr<-ggplot(frame, aes(x = nlp,y = mre*100)) +
    geom_line() +
    facet_wrap(. ~ w,labeller = labeller(w=wlabs), scales="free",nrow = nr,ncol = nc)+
    scale_y_continuous(oob=squish,limits=ylimits,na.value=ylimits[2])+
    labs(y = "MAPE", x="Number of instances") +
    # theme_minimal() + 
     theme(panel.border = element_rect(color="black", fill=NA), 
          strip.background = element_rect(fill=NA),
          strip.text       = element_text(size = fs, face = "bold", family = "mono"),
          axis.title       = element_text(size = fs, face = "bold", family = "mono"),
          axis.text        = element_text(size = fs, family = "mono"),
          axis.text.x      = element_text(angle = 90, hjust = 0.5)
    ) 
  
  return(gr)
}





