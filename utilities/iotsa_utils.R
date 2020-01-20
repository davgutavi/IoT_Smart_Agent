
windowResultsDf<- function(experiment="light",configuration="re1",windowValue=3){

wi<-which(window.values == windowValue)

if (experiment=="light"){
  if (configuration=="re1"){
    wf<-light.results.dfs.re1config[[wi]]
  }
  else if (configuration=="mre"){
    wf<-light.results.dfs.mreconfig[[wi]]
  }
}

if (experiment=="pressure"){
  if (configuration=="re1"){
    wf<-pressure.results.dfs.re1config[[wi]]
  }
  else if (configuration=="mre"){
    wf<-pressure.results.dfs.mreconfig[[wi]]
  }
}

if (experiment=="temperature"){
  if (configuration=="re1"){
    wf<-temperature.results.dfs.re1config[[wi]]
  }
  else if (configuration=="mre"){
    wf<-temperature.results.dfs.mreconfig[[wi]]
  }
}


mi <- 1
pred<-wf[[mi]]

df<-data.frame(m=rep(mi,nrow(pred)),t=c(pred$nlp+1:nrow(pred)),o=pred$o,p=pred$p)


for (mi in (2:length(wf))){
  pred<-wf[[mi]]
  df<-bind_rows(df,data.frame(m=rep(mi,nrow(pred)),t=c(pred$nlp+1:nrow(pred)),o=pred$o,p=pred$p))
}

return(df)
}



experimentWindowTestDf<- function(experiment="light",configuration="re1",windowValue=3,modelIndex=30){
  
  wi<-which(window.values == windowValue)
  
  if (experiment=="light"){
    if (configuration=="re1"){
      pth<-light.results.dfs.re1config[[wi]][[modelIndex]]
    }
    else if (configuration=="mre"){
      pth<-light.results.dfs.mreconfig[[wi]][[modelIndex]]
    }
  }
  
  if (experiment=="pressure"){
    if (configuration=="re1"){
      pth<-pressure.results.dfs.re1config[[wi]][[modelIndex]]
    }
    else if (configuration=="mre"){
      pth<-pressure.results.dfs.mreconfig[[wi]][[modelIndex]]
    }
  }
  
  if (experiment=="temperature"){
    if (configuration=="re1"){
      pth<-temperature.results.dfs.re1config[[wi]][[modelIndex]]
    }
    else if (configuration=="mre"){
      pth<-temperature.results.dfs.mreconfig[[wi]][[modelIndex]]
    }
  }

  df<-data.frame(t=c(pth$nlp+1:nrow(pth)),o=pth$o,p=pth$p)
 
  return(df)
}


experimentWindowDf<- function(experiment="light",configuration="re1",testIndex=30){
  
  if (experiment=="light"){
    if (configuration=="re1"){
      pth<-light.results.dfs.re1config
    }
    else if (configuration=="mre"){
      pth<-light.results.dfs.mreconfig
    }
  }
  
  if (experiment=="pressure"){
    if (configuration=="re1"){
      pth<-pressure.results.dfs.re1config
    }
    else if (configuration=="mre"){
      pth<-pressure.results.dfs.mreconfig
    }
  }
  
  if (experiment=="temperature"){
    if (configuration=="re1"){
      pth<-temperature.results.dfs.re1config
    }
    else if (configuration=="mre"){
      pth<-temperature.results.dfs.mreconfig
    }
  }
  
  wi<-1
  pred<-pth[[wi]][[testIndex]]
  df<-data.frame(w=rep(window.values[wi],nrow(pred)),t=c(pred$nlp+1:nrow(pred)),o=pred$o,p=pred$p)
  for (wi in (2:window.count)){
    pred<-pth[[wi]][[testIndex]]
    df<-bind_rows(df,data.frame(w=rep(window.values[wi],nrow(pred)),t=c(pred$nlp+1:nrow(pred)),o=pred$o,p=pred$p))
  }
  
  return(df)
}


loadObjectFromListOfVectorOfFilePaths<-function(listOfVectorOfFilePaths){
  
  experimentResults <-  list(loadWindowFromVectorOfFilePaths(listOfVectorOfFilePaths[[1]]))
  
  for (i in c(2:window.count)){
    experimentResults[[i]] <- loadWindowFromVectorOfFilePaths(listOfVectorOfFilePaths[[i]])
  }
  
  return(experimentResults)
  
}

loadWindowFromVectorOfFilePaths <- function(vectorOfFilePaths) {
  
  wR <- list(loadWindowResults(vectorOfFilePaths[1]))
  
  for (i in c(2:length(vectorOfFilePaths))) {
    
    wR[[i]] <-loadWindowResults(vectorOfFilePaths[i])
    print(paste0("Loaded: ",vectorOfFilePaths[i]))
    
  }
  
  wExp <- list(general = loadGeneralAttributesFromCsvPath(vectorOfFilePaths[1]), results = wR)
  
  return(wExp)
  
}

loadGeneralAttributesFromCsvPath <- function(csvPath) {
  df <- read.csv(csvPath, sep = ";")
  features <- df[, 1:(ncol(df) - 10)]
  observed <- df[, (ncol(features) + 1)]
  num_features <- df[1, (ncol(features) + 7)]
  num_iterations <- df[1, (ncol(features) + 8)]
  step_size <- df[1, (ncol(features) + 9)]
  batch_number <- df[1, (ncol(features) + 10)]
  
  r <- list(
    features = features,
    observed = observed,
    num_features = num_features,
    num_iterations = num_iterations,
    step_size = step_size,
    batch_number = batch_number
  )
  
}

loadWindowResults <- function(resultCsvPath) {
  
  df <- read.csv(resultCsvPath, sep = ";")
  n <- ncol(df)
  predicted <- df[, (n - 8):(n - 6)]
  nlp <- df[1, (n - 5)]
  time <- as.character(df[1, (n - 4)])
  
  l <- list(predicted = predicted,
            nlp = nlp,
            time = time)
  
  return(l)
  
}

loadPredictionsDfsFromVectorOfPathFiles <- function(vectorOfPathFiles) {
  
  res<-list()
  
  res<-list(read.csv(vectorOfPathFiles[1], sep = ";"))
  
  print(paste0("Df loaded: ",vectorOfPathFiles[1]))
  
  for(i in c(2:length(vectorOfPathFiles))){
    
    res[[i]]<-read.csv(vectorOfPathFiles[i], sep = ";")
    
    print(paste0("Df loaded: ",vectorOfPathFiles[i]))
    
  }
  
  return (res)
}

# Misc----
getWindowMreStdev<-function(experimentResults,windowIndex){

  mean<-mean(experimentResults[[windowIndex]]$results[[length(experimentResults[[windowIndex]]$results)]]$predicted$re)
  stdev<-pop.sd(experimentResults[[windowIndex]]$results[[length(experimentResults[[windowIndex]]$results)]]$predicted$re)
  
  return(c(mean,stdev))
  
}

getWindowMreLastTest<-function(experimentResults){
  
  mre<-c()
  for (i in c(1:length(experimentResults))){
    mre<-c(mre,mean(experimentResults[[i]]$results[[length(experimentResults[[i]]$results)]]$predicted$re))
  }
  
  return(mre)
}


experimentWindowReStdevGraph<-function(window_error_study,window_measure_study){
  df<-cbind(window_error_study,window_measure_study$nstdev)
  names(df)[3]<-"nstdev"
  return(df)
}


getWindowAccSeriesFromIndSeries<-function(windowSeries){
  
  wSeries<-windowSeries[[1]]
  acc<- wSeries[[1]]
  was <-list(acc)
  
  for(i in c(2:length(wSeries))){
    
    acc<- c(acc,wSeries[[i]])
    was[[i]]<-acc
    
  }
  
  return(was)
}

getExperimentSeries <- function(experimentPath) {
  windowPaths <- dir(experimentPath, full.names = T)
  
  print(paste0(windowPaths[1], "/pre_training"))
  experimentSeries <-
    list(getWindowBatchSeries(paste0(windowPaths[1], "/pre_training")))
  
  for (i in c(2:length(windowPaths))) {
    print(paste0(windowPaths[i], "/pre_training"))
    
    experimentSeries[[i]] <-
      getWindowBatchSeries(paste0(windowPaths[i], "/pre_training"))
    
  }
  return(experimentSeries)
}

getWindowBatchSeries <- function(windowPreTrainingPath) {
  datasetPaths <- dir(windowPreTrainingPath, full.names = T)
  
  windowBatchSeries <- list(getBatchSeries(datasetPaths[1]))
  
  for (i in c(2:length(datasetPaths))) {
    windowBatchSeries[[i]] <- getBatchSeries(datasetPaths[i])
  }
  
  return(windowBatchSeries)
}

# Legacy----

loadVariableExperiment <- function(variableFolderPath,type) {
  
  
  windowPaths <- dir(variableFolderPath, full.names = T)
  
  # print(paste0("********Loading window: ", getFolderName(windowPaths[1])))
  
  print(paste0("Loading window: ", windowPaths[1]))
  
  variable_experiment <- list(loadWindowExperiment(windowPaths[1],type))
  
  for (i in 2:length(windowPaths)) {
    
    # print(paste0("********Loading window: ", getFolderName(windowPaths[i])))
    
    print(paste0("Loading window: ", windowPaths[i]))
    
    variable_experiment[[i]] <- loadWindowExperiment(windowPaths[i],type)
    
  }
  
  return(variable_experiment)
  
}


loadWindowExperiment <- function(windowPath,type) {
  
  ap<-""
  
  if(type=="re1"){
    ap <- "/results"  
  }
  else if (type=="mre"){
    ap <- "/results_Prediction"  
  }
  
  resultFolders <- dir(paste0(windowPath, ap), full.names = T)
  
  print(resultFolders)
  
  window_results <-
    list(loadWindowResults(getCsvPath(resultFolders[1])))
  
  # print(paste0(getFolderName(resultFolders[1]), " loaded"))
  
  for (i in c(2:length(resultFolders))) {
    # print(paste0(getFolderName(resultFolders[i]), " loaded"))
    
    window_results[[i]] <-
      loadWindowResults(getCsvPath(resultFolders[i]))
    
  }
  
  
  window_experiment <-
    list(general = loadGeneralAttributes(resultFolders[1]), results = window_results)
  
  return(window_experiment)
  
}

loadGeneralAttributes <- function(resultFolder) {
  df <- read.csv(getCsvPath(resultFolder), sep = ";")
  features <- df[, 1:(ncol(df) - 10)]
  observed <- df[, (ncol(features) + 1)]
  num_features <- df[1, (ncol(features) + 7)]
  num_iterations <- df[1, (ncol(features) + 8)]
  step_size <- df[1, (ncol(features) + 9)]
  batch_number <- df[1, (ncol(features) + 10)]
  
  r <- list(
    features = features,
    observed = observed,
    num_features = num_features,
    num_iterations = num_iterations,
    step_size = step_size,
    batch_number = batch_number
  )
  
}


loadGeneralAttributes <- function(resultFolder) {
  print(paste0("path=",resultFolder))
  df <- read.csv(getCsvPath(resultFolder), sep = ";")
  features <- df[, 1:(ncol(df) - 10)]
  observed <- df[, (ncol(features) + 1)]
  num_features <- df[1, (ncol(features) + 7)]
  num_iterations <- df[1, (ncol(features) + 8)]
  step_size <- df[1, (ncol(features) + 9)]
  batch_number <- df[1, (ncol(features) + 10)]
  
  r <- list(
    features = features,
    observed = observed,
    num_features = num_features,
    num_iterations = num_iterations,
    step_size = step_size,
    batch_number = batch_number
  )
  
}

# Unused----
getBatchReLineGraph <- function(experiments, nbatches = 4) {
  return(getBatchReLineGraphByStudy(buildStudy(experiments, nbatches)))
  
}

buildStudy <- function(experiments, nbatches = 4) {
  batch <- data.frame(batch = c(1:nbatches))
  
  study <- cbind(batch, experiments[[1]]$results[, 4])
  names(study)[2] <- paste0("w_", experiments[[1]]$nfeatures)
  for (i in c(2:length(experiments))) {
    study <- cbind(study, experiments[[i]]$results[, 4])
    names(study)[i + 1] <- paste0("w_", experiments[[i]]$nfeatures)
  }
  
  return(study)
  
}

getFeatureName <- function(index) {
  res <- as.character(index)
  
  if (num_of_digits(index) < 2) {
    res <- paste0("0", index)
  }
  
  return(res)
  
}

tpredictions <- function(df) {
  nf <- NCOL(df) - 3
  x <- df[, 1:nf]
  aux <- cbind(centroid = c(1:NROW(x)), x)
  rn <- c()
  for (i in 0:(nf - 1)) {
    rn <- c(rn, paste0("x", i))
  }
  cn <- c()
  for (i in 1:NROW(x)) {
    cn <- c(cn, paste0("t", i))
  }
  series <- setNames(data.frame(t(aux[,-1])), aux[, 1])
  series <- setNames(series, cn)
  feature <- data.frame(feature = rn)
  s <- cbind(feature, series)
  
  return(s)
  
}

getReBarsByModelIndex <- function(window, modelIndex) {
  df <- data.frame(re = window$results[[modelIndex]]$predicted$re)
  gr <- ggplot(df, aes(y = re, x = c(1:length(re)))) +
    geom_bar(stat = "identity") +
    geom_hline(yintercept = min(df), color = "green") +
    labs(y = "relative error", x = "prediction index") +
    theme(
      axis.text = element_text(size = 8),
      axis.title = element_text(size = 8, face = "bold"),
      legend.text = element_text(size = 8, face = "bold"),
      legend.title = element_text(size = 8, face = "bold")
    )
  
  return(gr)
}

getReBarsByModel <- function(model) {
  df <- data.frame(re = model$predicted$re)
  gr <- ggplot(df, aes(y = re, x = c(1:length(re)))) +
    geom_bar(stat = "identity") +
    geom_hline(yintercept = min(df), color = "green") +
    labs(y = "relative error", x = "prediction index") +
    theme(axis.text = element_text(size = 2),
          axis.title = element_text(size = 2, face = "bold"))
  
  return(gr)
}

getPlotGridByWindow <- function(window) {
  grs <- list()
  
  for (mod in window$results) {
    grs <- c(grs, list(getReBarsByModel(mod)))
  }
  pg <- plot_grid(plotlist = grs)
  
  return(pg)
  
}