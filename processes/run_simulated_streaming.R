source("utilities/streaming_utils.R")
# ----
experimentFolder <- "direction"
windowFolder     <- "w03"
# ----
rootExperimentationFolder <- "/Users/davgutavi/NAS_PROYECTOS/iot_smart_agent/simulated_experimentation/online_experimentation"
experimentWindowFolder    <- paste0(rootExperimentationFolder,"/",experimentFolder,"/",windowFolder)
trainingFolder            <- paste0(experimentWindowFolder,"/training")
testFolder                <- paste0(experimentWindowFolder,"/test")
trainingChannel           <- paste0(experimentWindowFolder,"/training_channel")
testChannel               <- paste0(experimentWindowFolder,"/test_channel")
# ----
delayTrainingTest <- 3
batchdelay        <- 2
# ----
injecTrainingTestFiles(trainingFolder,testFolder,trainingChannel,testChannel,delayTrainingTest,batchdelay)