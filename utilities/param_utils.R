# Load study frames----
studyFrames <-function(){

  # Light
  lWs <-list(read.csv(paths.light.results.windows.parametric[1],sep=";",header = T))
  for (i in c(2:length(paths.light.results.windows.parametric))) {
     lWs[[i]] <-read.csv(paths.light.results.windows.parametric[i],sep=";",header = T)
  }
  lF<-joinFrames(lWs)
  
  # Pressure
  pWs <-list(read.csv(paths.pressure.results.windows.parametric[1],sep=";",header = T))
  for (i in c(2:length(paths.pressure.results.windows.parametric))) {
    pWs[[i]] <-read.csv(paths.pressure.results.windows.parametric[i],sep=";",header = T)
  }
  pF<-joinFrames(pWs)
  
  # Temperature
  tWs <-list(read.csv(paths.temperature.results.windows.parametric[1],sep=";",header = T))
  for (i in c(2:length(paths.temperature.results.windows.parametric))) {
    tWs[[i]] <-read.csv(paths.temperature.results.windows.parametric[i],sep=";",header = T)
  }
  tF<-joinFrames(tWs)
  
  r<- list(ligth=lF,pressure=pF,temperature=tF)
  
  return(r)
  
}


joinFrames<-function(studies){
  frame<-studies[[1]]
  for (i in c(2:length(studies))){
    frame<-bind_rows(frame,studies[[i]])
  }
  return(frame)
}

# Plots----
paramWiGrid<-function(frame, varIndex,ylab,scales="free",ylimits=c(0.0,100.0)){
  
  frame[,varIndex]<-frame[,varIndex]*100
 
   gr<-ggplot(frame, aes(x = s,y = frame[,varIndex])) +
    geom_line() +
    # facet_grid(w ~ i,labeller = label_both,switch = "y",scales=scales)+
    facet_grid(i ~ w,labeller = label_both,switch = "y",scales=scales)+
    labs(y = ylab, x="stepSize") +
    scale_y_continuous(oob=squish,limits=ylimits,na.value=ylimits[2])+
    theme_minimal() + 
    theme(panel.border = element_rect(color="black", fill=NA), 
          strip.background = element_rect(fill=NA, color="black"),
          axis.title = element_text(size = 5, face = "bold"),
          axis.text = element_text(size = 4),
          strip.text = element_text(size = 5),
          axis.text.x = element_text(angle = 90, hjust = 0.5)
    ) 

  return(gr)
  
}

  paramIgridList<-function(frame, varIndex,ylab,scales="free",ylimits=c(0.0,100.0)){
    
    frame[,varIndex]<-frame[,varIndex]*100
    j<-1
    gl<-list()
    
    for(wi in window.values){
    
      ndf<-frame[frame$w==wi,]
      
      print(paste0("mins = ",min(ndf$s)," maxs =",max(ndf$s)))
      
      gr<-ggplot(ndf, aes(x = s,y = ndf[,varIndex])) +
          geom_line() +
          facet_grid( i ~.,switch ="y",scales = scales)+
          labs(y = ylab, x="stepSize") +
          scale_y_continuous(oob=squish,limits=ylimits,na.value=ylimits[2])+
        # scale_x_discrete()+
          theme_minimal() + 
          theme(panel.border = element_rect(color="black", fill=NA), 
            strip.background = element_rect(fill=NA, color="black"),
            axis.title = element_text(size = 5, face = "bold"),
            axis.text = element_text(size = 4),
            strip.text = element_text(size = 5))
      
      gl[[j]]<-gr
      j<-j+1
    
    }
    return(gl)
  }


  paramGrList <-function(frame, varIndex,ylab,scales="fixed",ylimits=c(0.0,100.0)){
    
    
    frame[,varIndex]<-frame[,varIndex]*100
    gl<-list()
    ig<-1
    
    for(wi in window.values){
      
      for(ii in iterations.values){
        
        ndf<-frame[frame$w==wi&frame$i==ii,]
        
        print(paste0("mins = ",min(ndf$s)," maxs =",max(ndf$s)))
        
        gr<-ggplot(ndf, aes(x = s,y = ndf[,varIndex])) +
          geom_line() +
          labs(y = ylab, x="stepSize") +
          scale_y_continuous(oob=squish,limits=ylimits,na.value=ylimits[2])+
          theme_minimal() + 
          theme(panel.border = element_rect(color="black", fill=NA), 
                strip.background = element_rect(fill=NA, color="black"),
                axis.title = element_text(size = 5, face = "bold"),
                axis.text = element_text(size = 4),
                strip.text = element_text(size = 5))
           
        gl[[ig]]<-gr
        ig<-ig+1
      }
      
    }
    return(gl)
  }