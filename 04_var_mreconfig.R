# light: results paths----
paths.light.results.windows.mreconfig <- c(paste0(paths.light.results.windows[1],"/", names.results.mreconfig))
for (i in c(2:length(paths.light.results.windows))){
  paths.light.results.windows.mreconfig <- c(paths.light.results.windows.mreconfig,
                                           paste0(paths.light.results.windows[i],"/", names.results.mreconfig))
}

# light: results predictions folder paths----
paths.light.results.windows.mreconfig.predictions.folders<-list()
paths.light.results.windows.mreconfig.predictions.folders[[1]]<-dir(paths.light.results.windows.mreconfig[1], full.names = T)
for(i in c(2:length(paths.light.results.windows.mreconfig))){
  paths.light.results.windows.mreconfig.predictions.folders[[i]]<-dir(paths.light.results.windows.mreconfig[i], full.names = T)
}

# light: results predictions file paths----
paths.light.results.windows.mreconfig.predictions.files<-list()
paths.light.results.windows.mreconfig.predictions.files[[1]]<-getCsvPathFromList(paths.light.results.windows.mreconfig.predictions.folders[[1]])
for(i in c(2:length(paths.light.results.windows.mreconfig.predictions.folders))){
  paths.light.results.windows.mreconfig.predictions.files[[i]]<-getCsvPathFromList(paths.light.results.windows.mreconfig.predictions.folders[[i]])
}

# pressure: results paths----
paths.pressure.results.windows.mreconfig <- c(paste0(paths.pressure.results.windows[1],"/", names.results.mreconfig))
for (i in c(2:length(paths.pressure.results.windows))){
  paths.pressure.results.windows.mreconfig <- c(paths.pressure.results.windows.mreconfig,
                                                paste0(paths.pressure.results.windows[i],"/", names.results.mreconfig))
}

# pressure: results predictions folder paths----
paths.pressure.results.windows.mreconfig.predictions.folders<-list()
paths.pressure.results.windows.mreconfig.predictions.folders[[1]]<-dir(paths.pressure.results.windows.mreconfig[1], full.names = T)
for(i in c(2:length(paths.pressure.results.windows.mreconfig))){
  paths.pressure.results.windows.mreconfig.predictions.folders[[i]]<-dir(paths.pressure.results.windows.mreconfig[i], full.names = T)
}

# pressure: results predictions file paths----
paths.pressure.results.windows.mreconfig.predictions.files<-list()
paths.pressure.results.windows.mreconfig.predictions.files[[1]]<-getCsvPathFromList(paths.pressure.results.windows.mreconfig.predictions.folders[[1]])
for(i in c(2:length(paths.pressure.results.windows.mreconfig.predictions.folders))){
  paths.pressure.results.windows.mreconfig.predictions.files[[i]]<-getCsvPathFromList(paths.pressure.results.windows.mreconfig.predictions.folders[[i]])
}

# temperature: results paths----
paths.temperature.results.windows.mreconfig <- c(paste0(paths.temperature.results.windows[1],"/", names.results.mreconfig))
for (i in c(2:length(paths.temperature.results.windows))){
  paths.temperature.results.windows.mreconfig <- c(paths.temperature.results.windows.mreconfig,
                                                   paste0(paths.temperature.results.windows[i],"/", names.results.mreconfig))
}

# temperature: results predictions folder paths----
paths.temperature.results.windows.mreconfig.predictions.folders<-list()
paths.temperature.results.windows.mreconfig.predictions.folders[[1]]<-dir(paths.temperature.results.windows.mreconfig[1], full.names = T)
for(i in c(2:length(paths.temperature.results.windows.mreconfig))){
  paths.temperature.results.windows.mreconfig.predictions.folders[[i]]<-dir(paths.temperature.results.windows.mreconfig[i], full.names = T)
}

# temperature: results predictions file paths----
paths.temperature.results.windows.mreconfig.predictions.files<-list()
paths.temperature.results.windows.mreconfig.predictions.files[[1]]<-getCsvPathFromList(paths.temperature.results.windows.mreconfig.predictions.folders[[1]])
for(i in c(2:length(paths.temperature.results.windows.mreconfig.predictions.folders))){
  paths.temperature.results.windows.mreconfig.predictions.files[[i]]<-getCsvPathFromList(paths.temperature.results.windows.mreconfig.predictions.folders[[i]])
}

# light: experiment dataframes----
light.results.dfs.mreconfig<-list()
light.results.dfs.mreconfig[[1]]<-loadPredictionsDfsFromVectorOfPathFiles(paths.light.results.windows.mreconfig.predictions.files[[1]])
for (i in c(2:length(paths.light.results.windows.mreconfig.predictions.files))){
  light.results.dfs.mreconfig[[i]]<-loadPredictionsDfsFromVectorOfPathFiles(paths.light.results.windows.mreconfig.predictions.files[[i]])
}  

# pressure: experiment dataframes----
pressure.results.dfs.mreconfig<-list()
pressure.results.dfs.mreconfig[[1]]<-loadPredictionsDfsFromVectorOfPathFiles(paths.pressure.results.windows.mreconfig.predictions.files[[1]])
for (i in c(2:length(paths.pressure.results.windows.mreconfig.predictions.files))){
  pressure.results.dfs.mreconfig[[i]]<-loadPredictionsDfsFromVectorOfPathFiles(paths.pressure.results.windows.mreconfig.predictions.files[[i]])
}  

# temperature: experiment dataframes----
temperature.results.dfs.mreconfig<-list()
temperature.results.dfs.mreconfig[[1]]<-loadPredictionsDfsFromVectorOfPathFiles(paths.temperature.results.windows.mreconfig.predictions.files[[1]])
for (i in c(2:length(paths.temperature.results.windows.mreconfig.predictions.files))){
  temperature.results.dfs.mreconfig[[i]]<-loadPredictionsDfsFromVectorOfPathFiles(paths.temperature.results.windows.mreconfig.predictions.files[[i]])
}   

# mreconfig: results objects----
light.results.object.mreconfig<-loadObjectFromListOfVectorOfFilePaths(paths.light.results.windows.mreconfig.predictions.files)

paths.light.results.windows.mreconfig.predictions.files

pressure.results.object.mreconfig<-loadObjectFromListOfVectorOfFilePaths(paths.pressure.results.windows.mreconfig.predictions.files)
temperature.results.object.mreconfig<-loadObjectFromListOfVectorOfFilePaths(paths.temperature.results.windows.mreconfig.predictions.files)