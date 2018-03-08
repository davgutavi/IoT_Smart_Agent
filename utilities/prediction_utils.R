tsGraph<-function(experiment="light",configuration="re1",windowValue=3,modelIndex=30){
  df<-experimentWindowTestDf(experiment,configuration,windowValue,modelIndex)
  ndf<-melt(df,"t")
  gr<-ggplot(ndf, aes(x = t,y = value,group = variable)) +
    geom_line(aes(linetype=variable)) +
    labs(y = "value", x="time instant")
  return(gr)
}

optimalGrid <- function(modelIndexesVector,experiment,configuration){
  
  i<-1
  df <- data.frame(window=window.values[i],model=modelIndexesVector[i],
                   experimentWindowTestDf(experiment,configuration,window.values[i],modelIndexesVector[i]))
  
  for (i in c(2:length(modelIndexesVector))){
    df<-bind_rows(df,
                  data.frame(window=window.values[i],model=modelIndexesVector[i],
                             experimentWindowTestDf(experiment,configuration,window.values[i],modelIndexesVector[i])))
  }
  
  ndf<-melt(df,c("window","model","t"))
  gr<-ggplot(ndf, aes(x = t,y = value,group = variable)) +
    geom_line(aes(linetype=variable)) +
    labs(y = "value", x="time instant") +
    facet_wrap(window~model,labeller = label_both,scales="free",nrow = 5,ncol = 2)+
    scale_y_continuous(oob=squish)+
    theme_minimal() + 
    theme(panel.border = element_rect(color="black", fill=NA), 
          strip.background = element_rect(fill=NA, color="black"),
          axis.title = element_text(size = 5, face = "bold"),
          axis.text = element_text(size = 5),
          strip.text = element_text(size = 5),
          axis.text.x = element_text(angle = 90, hjust = 0.5)
    )
  
  return (gr)
  
}



generalGrid<-function (config="re1",testIndex=30){
  
  if (config=="re1"){
    lp <- light.results.dfs.re1config
    pp <- pressure.results.dfs.re1config
    tp <- temperature.results.dfs.re1config
  }
  else if (config=="mre"){
    lp <- light.results.dfs.mreconfig
    pp <- pressure.results.dfs.mreconfig
    tp <- temperature.results.dfs.mreconfig
  }
  
  wi<-1
  pred<-lp[[wi]][[testIndex]]
  ldf<-data.frame(w=rep(window.values[wi],nrow(pred)),t=c(pred$nlp+1:nrow(pred)),o=pred$o,p=pred$p)
  for (wi in (2:window.count)){
    pred<-lp[[wi]][[testIndex]]
    ldf<-bind_rows(ldf,data.frame(w=rep(window.values[wi],nrow(pred)),t=c(pred$nlp+1:nrow(pred)),o=pred$o,p=pred$p))
  }
  ldf<-cbind(experiment=rep("light",nrow(ldf)),ldf)
  
  wi<-1
  pred<-pp[[wi]][[testIndex]]
  pdf<-data.frame(w=rep(window.values[wi],nrow(pred)),t=c(pred$nlp+1:nrow(pred)),o=pred$o,p=pred$p)
  for (wi in (2:window.count)){
    pred<-pp[[wi]][[testIndex]]
    pdf<-bind_rows(pdf,data.frame(w=rep(window.values[wi],nrow(pred)),t=c(pred$nlp+1:nrow(pred)),o=pred$o,p=pred$p))
  }
  pdf<-cbind(experiment=rep("pressure",nrow(pdf)),pdf)
  
  wi<-1
  pred<-tp[[wi]][[testIndex]]
  tdf<-data.frame(w=rep(window.values[wi],nrow(pred)),t=c(pred$nlp+1:nrow(pred)),o=pred$o,p=pred$p)
  for (wi in (2:window.count)){
    pred<-tp[[wi]][[testIndex]]
    tdf<-bind_rows(tdf,data.frame(w=rep(window.values[wi],nrow(pred)),t=c(pred$nlp+1:nrow(pred)),o=pred$o,p=pred$p))
  }
  tdf<-cbind(experiment=rep("temperature",nrow(tdf)),tdf)
  
  ef<- bind_rows(ldf,pdf,tdf)
  ndf<-melt(ef,c("experiment","w","t"))
  
  gr.general<-ggplot(ndf, aes(x = t,y = value,group = variable)) +
    geom_line(aes(linetype=variable)) +
    labs(y = "value", x="time instant") +
    # facet_grid(experiment~w,labeller = label_both,switch = "y",scales="free")+
    facet_wrap(experiment~w,labeller = label_both,scales="free",nrow = experiment.count,ncol = window.count)+
    # scale_y_continuous(oob=squish,limits=ylimits,na.value=ylimits[2])+
    scale_y_continuous(oob=squish)+
    theme_minimal() + 
    theme(panel.border = element_rect(color="black", fill=NA), 
          strip.background = element_rect(fill=NA, color="black"),
          axis.title = element_text(size = 5, face = "bold"),
          axis.text = element_text(size = 4),
          strip.text = element_text(size = 3),
          axis.text.x = element_text(angle = 90, hjust = 0.5)
    ) 
  
  return(gr.general)
  
}

completeWindowGrid<-function (experiment="light",config="re1",windowValue=3){
  
  wi<-which(window.values == windowValue)
  
  if (experiment=="light"){
    if (config=="re1"){
      pth<-light.results.dfs.re1config[[wi]]
    }
    else if (config=="mre"){
      pth<-light.results.dfs.mreconfig[[wi]]
    }
  }
  
  if (experiment=="pressure"){
    if (config=="re1"){
      pth<-pressure.results.dfs.re1config[[wi]]
    }
    else if (config=="mre"){
      pth<-pressure.results.dfs.mreconfig[[wi]]
    }
  }
  
  if (experiment=="temperature"){
    if (config=="re1"){
      pth<-temperature.results.dfs.re1config[[wi]]
    }
    else if (config=="mre"){
      pth<-temperature.results.dfs.mreconfig[[wi]]
    }
  }
  
  ti<-1
  pred<-pth[[ti]]
  df<-data.frame(test=rep(ti,nrow(pred)),t=c(pred$nlp+1:nrow(pred)),o=pred$o,p=pred$p)
  for (ti in (2:length(pth))){
    pred<-pth[[ti]]
    df<-bind_rows(df,data.frame(test=rep(ti,nrow(pred)),t=c(pred$nlp+1:nrow(pred)),o=pred$o,p=pred$p))
  }
  
  ndf<-melt(df,c("test","t"))
  
  gr<-ggplot(ndf, aes(x = t,y = value,group = variable)) +
    geom_line(aes(linetype=variable)) +
    labs(y = "value", x="time instant") +
    facet_wrap(~test,labeller = label_both,scales="free",nrow = 30,ncol = 5)+
    scale_y_continuous(oob=squish)+
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







experimentGrid<-function(df){
  
  ndf<-melt(df,c("w","t"))
  gr<-ggplot(ndf, aes(x = t,y = value,group = variable)) +
    geom_line(aes(linetype=variable)) +
    labs(y = "value", x="time instant") +
    facet_wrap(~w,labeller = label_both,scales="free",nrow = 5,ncol = 5)+
    # scale_y_continuous(oob=squish,limits=ylimits,na.value=ylimits[2])+
    scale_y_continuous(oob=squish)+
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

windowPlot<-function(df,wv){
  e<-df[,-1]
  e<-e[e$w==wv,]
  e<-e[,-1]
  ndf<-melt(e,"t")
  gr<-ggplot(ndf, aes(x = t,y = value,group = variable)) +
    geom_line(aes(linetype=variable)) +
    labs(y = "value", x="time instant") +
    theme(
      axis.text = element_text(size = 8),
      axis.title = element_text(size = 8, face = "bold"),
      legend.text = element_text(size = 8, face = "bold"),
      legend.title = element_text(size = 8, face = "bold")
    )
  return(gr)
}


# graficar todos los puntos de una ventana concreta w (índice) teniendo en cuenta el último modelo generado ----
graphW<-function(loadedResults, windowIndex){

w <- loadedResults[[windowIndex]]
a1<-w$results[[length(w$results)]]
a2<-a1$predicted$re

f<-data.frame(t=c(w$general$num_features+1:length(w$general$observed)),
              o=w$general$observed,p=w$results[[length(w$results)]]$predicted$p)

ndf<-melt(f,"t")

gr<-ggplot(ndf, aes(x = t,y = value,group = variable, color = variable)) +
  geom_line() +
  labs(y = "value", x="time instant") +
  theme(
    axis.text = element_text(size = 8),
    axis.title = element_text(size = 8, face = "bold"),
    legend.text = element_text(size = 8, face = "bold"),
    legend.title = element_text(size = 8, face = "bold")
  )

return(gr)

}


# graficar todos los puntos con la ventana de menor mre ----
graphFewerMre<-function(loadedResults){
mn<-c()
for (i in c(1:length(loadedResults))){
  mn<-c(mn,mean(loadedResults[[i]]$results[[length(loadedResults[[i]]$results)]]$predicted$re))
}

w <- loadedResults[[which( mn == min(mn) )]]

f<-data.frame(t=c(w$general$num_features+1:length(w$general$observed)),
              o=w$general$observed,p=w$results[[length(w$results)]]$predicted$p)

ndf<-melt(f,"t")

gr<-ggplot(ndf, aes(x = t,y = value,group = variable, color = variable)) +
  geom_line() +
  labs(y = "value", x="time instant") +
  # scale_y_continuous(limits = c(0,103000))
  theme(
    axis.text = element_text(size = 8),
    axis.title = element_text(size = 8, face = "bold"),
    legend.text = element_text(size = 8, face = "bold"),
    legend.title = element_text(size = 8, face = "bold")
  )

index<-which(mn == min(mn))
ms<-getWindowMreStdev(loadedResults,index)
print(paste0("best window = ",window.names[index],", mre (%) = ", ms[1]*100,", stdev = ",ms[2]*100," %"))

return(gr)
}



# graficar n puntos con la ventana de menor mre ----
graphNpointFewerMre<-function(loadedResults,n){

mn<-c()
for (i in c(1:length(loadedResults))){
  mn<-c(mn,mean(loadedResults[[i]]$results[[length(loadedResults[[i]]$results)]]$predicted$re))
}

w <- loadedResults[[which( mn == min(mn) )]]

t=c(w$general$num_features+1:n)
o=w$general$observed[c(1:n)]
p=w$results[[length(w$results)]]$predicted$p[c(1:n)]

f<-data.frame(t=t,o=o,p=p)

ndf<-melt(f,"t")

gr<-ggplot(ndf, aes(x = t,y = value,group = variable, color = variable)) +
  geom_point() +
  geom_line() +
  labs(y = "value", x="time instant") +
  theme(
    axis.text = element_text(size = 8),
    axis.title = element_text(size = 8, face = "bold"),
    legend.text = element_text(size = 8, face = "bold"),
    legend.title = element_text(size = 8, face = "bold")
  )

return(gr)

}