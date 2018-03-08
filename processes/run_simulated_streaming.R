source("api/streaming_simulation.R")




preTrainingPath<- "/Users/davgutavi/NAS_PROYECTOS/iot_smart_agent/fuentes/dataset_experiments/exp_temperature/w_0360/pre_training"
preTestPath<- "/Users/davgutavi/NAS_PROYECTOS/iot_smart_agent/fuentes/dataset_experiments/exp_temperature/w_0360/pre_test"
trainingPath<- "/Users/davgutavi/NAS_PROYECTOS/iot_smart_agent/fuentes/dataset_experiments/exp_temperature/w_0360/training"
testPath<- "/Users/davgutavi/NAS_PROYECTOS/iot_smart_agent/fuentes/dataset_experiments/exp_temperature/w_0360/test"
delayTrainingTest<-3
batchdelay<-2
injecTrainingTestFiles(preTrainingPath,preTestPath,trainingPath,testPath,delayTrainingTest,batchdelay)