# light: results paths----
paths.light.results.windows.re1config <- c(paste0(paths.light.results.windows[1],"/", names.results.re1config))
for (i in c(2:length(paths.light.results.windows))){
  paths.light.results.windows.re1config <- c(paths.light.results.windows.re1config,
                                           paste0(paths.light.results.windows[i],"/", names.results.re1config))
}

# light: results predictions folder paths----
paths.light.results.windows.re1config.predictions.folders<-list()
paths.light.results.windows.re1config.predictions.folders[[1]]<-dir(paths.light.results.windows.re1config[1], full.names = T)
for(i in c(2:length(paths.light.results.windows.re1config))){
  paths.light.results.windows.re1config.predictions.folders[[i]]<-dir(paths.light.results.windows.re1config[i], full.names = T)
}

# light: results predictions file paths----
paths.light.results.windows.re1config.predictions.files<-list()
paths.light.results.windows.re1config.predictions.files[[1]]<-getCsvPathFromList(paths.light.results.windows.re1config.predictions.folders[[1]])
for(i in c(2:length(paths.light.results.windows.re1config.predictions.folders))){
  paths.light.results.windows.re1config.predictions.files[[i]]<-getCsvPathFromList(paths.light.results.windows.re1config.predictions.folders[[i]])
}

# pressure: results paths----
paths.pressure.results.windows.re1config <- c(paste0(paths.pressure.results.windows[1],"/", names.results.re1config))
for (i in c(2:length(paths.pressure.results.windows))){
  paths.pressure.results.windows.re1config <- c(paths.pressure.results.windows.re1config,
                                                paste0(paths.pressure.results.windows[i],"/", names.results.re1config))
}

# pressure: results predictions folder paths----
paths.pressure.results.windows.re1config.predictions.folders<-list()
paths.pressure.results.windows.re1config.predictions.folders[[1]]<-dir(paths.pressure.results.windows.re1config[1], full.names = T)
for(i in c(2:length(paths.pressure.results.windows.re1config))){
  paths.pressure.results.windows.re1config.predictions.folders[[i]]<-dir(paths.pressure.results.windows.re1config[i], full.names = T)
}

# pressure: results predictions file paths----
paths.pressure.results.windows.re1config.predictions.files<-list()
paths.pressure.results.windows.re1config.predictions.files[[1]]<-getCsvPathFromList(paths.pressure.results.windows.re1config.predictions.folders[[1]])
for(i in c(2:length(paths.pressure.results.windows.re1config.predictions.folders))){
  paths.pressure.results.windows.re1config.predictions.files[[i]]<-getCsvPathFromList(paths.pressure.results.windows.re1config.predictions.folders[[i]])
}

# temperature: results paths----
paths.temperature.results.windows.re1config <- c(paste0(paths.temperature.results.windows[1],"/", names.results.re1config))
for (i in c(2:length(paths.temperature.results.windows))){
  paths.temperature.results.windows.re1config <- c(paths.temperature.results.windows.re1config,
                                                   paste0(paths.temperature.results.windows[i],"/", names.results.re1config))
}

# temperature: results predictions folder paths----
paths.temperature.results.windows.re1config.predictions.folders<-list()
paths.temperature.results.windows.re1config.predictions.folders[[1]]<-dir(paths.temperature.results.windows.re1config[1], full.names = T)
for(i in c(2:length(paths.temperature.results.windows.re1config))){
  paths.temperature.results.windows.re1config.predictions.folders[[i]]<-dir(paths.temperature.results.windows.re1config[i], full.names = T)
}

# temperature: results predictions file paths----
paths.temperature.results.windows.re1config.predictions.files<-list()
paths.temperature.results.windows.re1config.predictions.files[[1]]<-getCsvPathFromList(paths.temperature.results.windows.re1config.predictions.folders[[1]])
for(i in c(2:length(paths.temperature.results.windows.re1config.predictions.folders))){
  paths.temperature.results.windows.re1config.predictions.files[[i]]<-getCsvPathFromList(paths.temperature.results.windows.re1config.predictions.folders[[i]])
}

# light: experiment dataframes----
light.results.dfs.re1config<-list(loadPredictionsDfsFromVectorOfPathFiles(paths.light.results.windows.re1config.predictions.files[[1]]))
for (i in c(2:length(paths.light.results.windows.re1config.predictions.files))){
  light.results.dfs.re1config[[i]]<-loadPredictionsDfsFromVectorOfPathFiles(paths.light.results.windows.re1config.predictions.files[[i]])
}  

# pressure: experiment dataframes----
pressure.results.dfs.re1config<-list(loadPredictionsDfsFromVectorOfPathFiles(paths.pressure.results.windows.re1config.predictions.files[[1]]))
for (i in c(2:length(paths.pressure.results.windows.re1config.predictions.files))){
  pressure.results.dfs.re1config[[i]]<-loadPredictionsDfsFromVectorOfPathFiles(paths.pressure.results.windows.re1config.predictions.files[[i]])
}  

# temperature: experiment dataframes----
temperature.results.dfs.re1config<-list(loadPredictionsDfsFromVectorOfPathFiles(paths.temperature.results.windows.re1config.predictions.files[[1]]))
for (i in c(2:length(paths.temperature.results.windows.re1config.predictions.files))){
  temperature.results.dfs.re1config[[i]]<-loadPredictionsDfsFromVectorOfPathFiles(paths.temperature.results.windows.re1config.predictions.files[[i]])
} 




# re1config: results objects----
light.results.object.re1config<-loadObjectFromListOfVectorOfFilePaths(paths.light.results.windows.re1config.predictions.files)
pressure.results.object.re1config<-loadObjectFromListOfVectorOfFilePaths(paths.pressure.results.windows.re1config.predictions.files)
temperature.results.object.re1config<-loadObjectFromListOfVectorOfFilePaths(paths.temperature.results.windows.re1config.predictions.files)