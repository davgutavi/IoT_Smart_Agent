# dataset source paths folders----
paths.datasets.raw<-paste0(paths.datasets,"/",names.folders.raw)
paths.datasets.raw.light<-paste0(paths.datasets.raw,"/",names.files.raw.light)
paths.datasets.raw.pressure<-paste0(paths.datasets.raw,"/",names.files.raw.pressure)
paths.datasets.raw.temperature<-paste0(paths.datasets.raw,"/",names.files.raw.temperature)

paths.datasets.light<- paste0(paths.datasets,"/",names.folders.light)
paths.datasets.pressure<- paste0(paths.datasets,"/",names.folders.pressure)
paths.datasets.temperature<- paste0(paths.datasets,"/",names.folders.temperature)
paths.datasets.light.windows<- dir(paths.datasets.light,full.names = T)
paths.datasets.pressure.windows<-dir(paths.datasets.pressure,full.names = T)
paths.datasets.temperature.windows<-dir(paths.datasets.temperature,full.names = T)

# labels of the graphs
labels.statistic.meanpstdev <- "mean + stdev"
labels.statistic.mean <- "mean"
labels.statistic.meanmstdev <- "mean - stdev"
labels.statistic.ligtvalues <- "light"
labels.statistic.pressurevalues <- "pressure"
labels.statistic.temperaturevalues <- "temperature"
labels.statistic.normalizedvalue <- "normalized value"

# light: dataset source paths files----
paths.light.files.test<-c()
for (wp in paths.datasets.light.windows){
  aux<-paste0(wp,"/",names.folders.sources_test)
  paths.light.files.test<-c(paths.light.files.test,dir(aux,full.names = T))
}

paths.light.files.training<-list(dir(paste0(paths.datasets.light.windows[1],"/",names.folders.sources_training),full.names = T))
for (i in c(2:length(paths.datasets.light.windows))){
  paths.light.files.training[[i]]<-dir(paste0(paths.datasets.light.windows[i],"/",names.folders.sources_training),full.names = T)
}

# pressure: dataset source paths files----
paths.pressure.files.test<-c()
for (wp in paths.datasets.pressure.windows){
  aux<-paste0(wp,"/",names.folders.sources_test)
  paths.pressure.files.test<-c(paths.pressure.files.test,dir(aux,full.names = T))
}

paths.pressure.files.training<-list(dir(paste0(paths.datasets.pressure.windows[1],"/",names.folders.sources_training),full.names = T))
for (i in c(2:length(paths.datasets.pressure.windows))){
  paths.pressure.files.training[[i]]<-dir(paste0(paths.datasets.pressure.windows[i],"/",names.folders.sources_training),full.names = T)
}

# temperature: dataset source paths files----
paths.temperature.files.test<-c()
for (wp in paths.datasets.temperature.windows){
  aux<-paste0(wp,"/",names.folders.sources_test)
  paths.temperature.files.test<-c(paths.temperature.files.test,dir(aux,full.names = T))
}

paths.temperature.files.training<-list(dir(paste0(paths.datasets.temperature.windows[1],"/",names.folders.sources_training),full.names = T))
for (i in c(2:length(paths.datasets.temperature.windows))){
  paths.temperature.files.training[[i]]<-dir(paste0(paths.datasets.temperature.windows[i],"/",names.folders.sources_training),full.names = T)
}