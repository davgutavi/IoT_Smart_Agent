# global names----
names.results.re1config<-"re1_config"
names.results.mreconfig<-"mre_config"
names.results.parametric<-"parametric"
names.results.statistics<-"statistics"
names.folders.dataset<-"datasets"
names.folders.offline_workspace<-"offline_workspace"
names.folders.results<-"results"
names.folders.streaming_workspace<-"streaming_workspace"
names.folders.offline_workspace<-"offline_workspace"
names.folders.studies<-"studies"
names.folders.light<-"light"
names.folders.pressure<-"pressure"
names.folders.temperature<-"temperature"
names.folders.sources_test<-"sources_test"
names.folders.sources_training<-"sources_training"
names.folders.raw<-"raw"
names.folders.incremental<-"incremental"
names.folders.prediction<-"prediction"
names.files.raw.light<-"light_raw.txt"
names.files.raw.pressure<-"pressure_raw.txt"
names.files.raw.temperature<-"temperature_raw.txt"

# global paths----
paths.root <- "/Users/davgutavi/NAS_PROYECTOS/iot_smart_agent/streaming_experimentation"
paths.datasets <- paste0(paths.root,"/",names.folders.dataset)
paths.offline_workspace <- paste0(paths.root,"/",names.folders.offline_workspace)
paths.results <- paste0(paths.root,"/",names.folders.results)
paths.streaming_workspace <- paste0(paths.root,"/",names.folders.streaming_workspace)
paths.studies <- paste0(paths.root,"/",names.folders.studies)
paths.light.results<- paste0(paths.results,"/",names.folders.light)
paths.pressure.results<- paste0(paths.results,"/",names.folders.pressure)
paths.temperature.results<- paste0(paths.results,"/",names.folders.temperature)
paths.studies.statistics <- paste0(paths.studies,"/",names.results.statistics)
paths.studies.parametric <- paste0(paths.studies,"/",names.results.parametric)
paths.studies.re1config <- paste0(paths.studies,"/",names.results.re1config)
paths.studies.re1config.incremental<-paste0(paths.studies.re1config,"/",names.folders.incremental)
paths.studies.re1config.prediction<-paste0(paths.studies.re1config,"/",names.folders.prediction)
paths.studies.mreconfig <- paste0(paths.studies,"/",names.results.mreconfig)
paths.studies.mreconfig.incremental<-paste0(paths.studies.mreconfig,"/",names.folders.incremental)
paths.studies.mreconfig.prediction<-paste0(paths.studies.mreconfig,"/",names.folders.prediction)

# window paths----
paths.light.results.windows<- dir(paths.light.results, full.names = T)
paths.pressure.results.windows<- dir(paths.pressure.results, full.names = T)
paths.temperature.results.windows<- dir(paths.temperature.results, full.names = T)

# load data: general----
experiment.names <- c("light","pressure","temperature")
experiment.count <- 3
window.count <- 10
window.names <- c("w_3","w_4","w_6","w_12","w_24","w_90","w_180","w_360","w_720","w_1080")
window.values <-c(3,4,6,12,24,90,180,360,720,1080)
iterations.values<- c(10,15,25,50,100)
var.info<-list(re1=5,re1_ylab="relative error (%)",mre=6,mre_ylab="mean relative error (%)")
test.count<-30


# labels of the graphs
labels.general.numberoflabeledpoints <- "#lp"   