source("api/load_api.R")

studyPath<- "/Users/davgutavi/Desktop/offline/study_01"

# development ----

experimentPath <- paste0(studyPath,"/experiment")
predictionsPath <- paste0(studyPath,"/predictions")
dfp <- read.csv(getCsvPath(predictionsPath), sep = ";")
dfe <- read.csv(getCsvPath(experimentPath), sep = ";")

predicted_value_1<-dfp[1,2]

aux1<-dfp[,c(5:length(dfp))]
all_predicted_points_x<- tdfWn(aux1)[,-1]
x1<-ax[,1]

aux2<-dfe[,c(7:length(dfe))]
a<- tdfWn(aux2)[,-1]
a0<- dfe[1,6]

y<-sum(x1*a)+a0

print(paste0("predicted value - computed y = ",p1-y))