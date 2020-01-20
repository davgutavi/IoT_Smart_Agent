source("load_utilities.R")

theme(legend.position="none")

tfmGraph<-function(experiment="light",configuration="re1",windowValue=3,modelIndex=30){
  df<-experimentWindowTestDf(experiment,configuration,windowValue,modelIndex)
  ndf<-melt(df,"t")
  gr<-ggplot(ndf, aes(x = t,y = value,color = variable)) +
    geom_line() +
    scale_color_manual(values=c("#000000","#FF0000"),labels = c("real", "predicted"))+
    labs(y = "value", x="time instant")+
    theme(legend.title=element_blank())
  return(gr)
}

##############TFM####################################################################################
# Light best, Configuration: cre1  ----
tfm.l<- tfmGraph("light","re1",3,13)
print(tfm.l)
ggsave("tfm_l.eps",plot=tfm.l,path="/Users/davgutavi/Desktop",device = "eps",width = 10, height = 10)

# Pressure best, Configuration: cre1  ----
tfm.p<- tfmGraph("pressure","re1",3,25)
print(tfm.p)
ggsave("tfm_p.eps",plot=tfm.p,path="/Users/davgutavi/Desktop",device = "eps",width = 10, height = 10)

# Temperature best, Configuration: cre1  ----
tfm.t<- tfmGraph("temperature","re1",4,30)
print(tfm.t)
ggsave("tfm_t.eps",plot=tfm.t,path="/Users/davgutavi/Desktop",device = "eps",width = 10, height = 10)

##############TFM####################################################################################





# TfM----
# Ligth: Optimal grid, Configuration: cre1  ----
l.cre1.optimal<-optimalGrid(c(13,13,4,2,2,2,25,1,16,1),"light","re1")
print(l.cre1.optimal)
ggsave("light_cre1_optimal.eps",plot=l.cre1.optimal,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 20)
ggsave("light_cre1_optimal.eps",plot=l.cre1.optimal,path="/Users/davgutavi/Desktop",device = "eps",width = 20, height = 20)
# TfM----

# TfM----
# Pressure: Optimal grid, Configuration: cre1  ----
p.cre1.optimal<-optimalGrid(c(25,1,27,13,5,6,1,2,5,26),"pressure","re1")
print(p.cre1.optimal)
ggsave("pressure_cre1_optimal.eps",plot=p.cre1.optimal,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 20)
ggsave("pressure_cre1_optimal.eps",plot=p.cre1.optimal,path="/Users/davgutavi/Desktop",device = "eps",width = 20, height = 20)
# TfM----

# TfM----
# Temperature: Optimal grid, Configuration: cre1  ----
t.cre1.optimal<-optimalGrid(c(18,30,30,5,5,5,24,25,22,20),"temperature","re1")
print(t.cre1.optimal)
ggsave("temperature_cre1_optimal.eps",plot=t.cre1.optimal,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 20)
ggsave("temperature_cre1_optimal.eps",plot=t.cre1.optimal,path="/Users/davgutavi/Desktop",device = "eps",width = 20, height = 20)
# TfM----





# Ligth: Optimal grid, Configuration: cmre  ----
l.cmre.optimal<-optimalGrid(c(1,1,1,1,2,1,1,1,1,21),"light","mre")
print(l.cmre.optimal)
ggsave("light_cmre_optimal.eps",plot=l.cmre.optimal,path=paths.studies.mreconfig.prediction,device = "eps",width = 20, height = 10)




# Pressure: Optimal grid, Configuration: cmre  ----
p.cmre.optimal<-optimalGrid(c(1,1,4,9,8,26,21,14,5,26),"pressure","mre")
print(p.cmre.optimal)
ggsave("pressure_cmre_optimal.eps",plot=p.cmre.optimal,path=paths.studies.mreconfig.prediction,device = "eps",width = 20, height = 10)




# Temperature: Optimal grid, Configuration: cmre  ----
t.cmre.optimal<-optimalGrid(c(9,6,30,11,27,5,15,16,30,24),"temperature","mre")
print(t.cmre.optimal)
ggsave("temperature_cmre_optimal.eps",plot=t.cmre.optimal,path=paths.studies.mreconfig.prediction,device = "eps",width = 20, height = 10)




# Light best, Configuration: cre1  ----
l.cre1.best<- tsGraph("light","re1",360,1)
print(l.cre1.best)
ggsave("light_cre1_best.eps",plot=l.cre1.best,path=paths.studies.re1config.prediction,device = "eps",width = 10, height = 10)

# Light best, Configuration: cmre  ----
l.mre.best<- tsGraph("light","mre",360,1)
print(l.mre.best)
ggsave("light_mre_best.eps",plot=l.mre.best,path=paths.studies.mreconfig.prediction,device = "eps",width = 10, height = 10)

# Pressure best, Configuration: cre1  ----
p.cre1.best<- tsGraph("pressure","re1",24,5)
print(p.cre1.best)
ggsave("pressure_cre1_best.eps",plot=p.cre1.best,path=paths.studies.re1config.prediction,device = "eps",width = 10, height = 10)

# Pressure best, Configuration: cmre  ----
p.mre.best<- tsGraph("pressure","mre",24,8)
print(p.mre.best)
ggsave("pressure_mre_best.eps",plot=p.mre.best,path=paths.studies.mreconfig.prediction,device = "eps",width = 10, height = 10)

# Temperature best, Configuration: cre1  ----
t.cre1.best<- tsGraph("temperature","re1",360,25)
print(t.cre1.best)
ggsave("temperature_cre1_best.eps",plot=t.cre1.best,path=paths.studies.re1config.prediction,device = "eps",width = 10, height = 10)

# Temperature best, Configuration: cmre  ----
t.mre.best<- tsGraph("temperature","mre",360,16)
print(t.mre.best)
ggsave("temperature_mre_best.eps",plot=t.mre.best,path=paths.studies.mreconfig.prediction,device = "eps",width = 10, height = 10)

# Configuration: re1, general grid----
general.cre1<-generalGrid("re1")
print(general.cre1)
ggsave("general_cre1.eps",plot=general.cre1,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)
# Configuration: mre, general grid----
general.cmre<-generalGrid("mre")
print(general.cmre)
ggsave("general_cmre.eps",plot=general.cmre,path=paths.studies.mreconfig.prediction,device = "eps",width = 20, height = 10)

# Light experiment grid----
ldf<-experimentWindowDf("light","re1")


prediction.light.cre1<-experimentGrid(ldf)
ggsave("light_cre1.eps",plot=prediction.light.cre1,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)
print(prediction.light.cre1)

# Pressure experiment grid----
pdf<-experimentWindowDf("pressure","re1")
prediction.pressure.cre1<-experimentGrid(pdf)
ggsave("pressure_cre1.eps",plot=prediction.pressure.cre1,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)
print(prediction.pressure.cre1)

# Temperature experiment grid----
tdf<-experimentWindowDf("temperature","re1")
prediction.temperature.cre1<-experimentGrid(tdf)
ggsave("temperature_cre1.eps",plot=prediction.temperature.cre1,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)
print(prediction.temperature.cre1)



# Experiment: light Configuration: re1, all predictions of one window
pred.light.cre1.w3   <-completeWindowGrid("light","re1",3)
ggsave("light_cre1_w3.eps",plot=pred.light.cre1.w3,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)
pred.light.cre1.w4   <-completeWindowGrid("light","re1",4)
ggsave("light_cre1_w4.eps",plot=pred.light.cre1.w4,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)
pred.light.cre1.w6   <-completeWindowGrid("light","re1",6)
ggsave("light_cre1_w6.eps",plot=pred.light.cre1.w6,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)
pred.light.cre1.w12  <-completeWindowGrid("light","re1",12)
ggsave("light_cre1_w12.eps",plot=pred.light.cre1.w12,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)
pred.light.cre1.w24  <-completeWindowGrid("light","re1",24)
ggsave("light_cre1_w24.eps",plot=pred.light.cre1.w24,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)
pred.light.cre1.w90  <-completeWindowGrid("light","re1",90)
ggsave("light_cre1_w90.eps",plot=pred.light.cre1.w90,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)
pred.light.cre1.w180 <-completeWindowGrid("light","re1",180)
ggsave("light_cre1_w180.eps",plot=pred.light.cre1.w180,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)
pred.light.cre1.w360 <-completeWindowGrid("light","re1",360)
ggsave("light_cre1_w360.eps",plot=pred.light.cre1.w360,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)
pred.light.cre1.w720 <-completeWindowGrid("light","re1",720)
ggsave("light_cre1_w720.eps",plot=pred.light.cre1.w720,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)
pred.light.cre1.w1080<-completeWindowGrid("light","re1",1080)
ggsave("light_cre1_w1080.eps",plot=pred.light.cre1.w1080,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)




# Light window plot----
gr.light.w<-windowPlot(ldf,180)
print(gr.light.w)

# Pressure window plot----
gr.pressure.w<-windowPlot(pdf,180)
print(gr.pressure.w)

# Temperature window plot----
tdf<-experimentWindowDf("temperature","mre")
gr.temperature.w<-windowPlot(tdf,3)
print(gr.temperature.w)


# graficar todos los puntos de una ventana concreta w (índice) teniendo en cuenta el último modelo generado ----
experiment<-temperature.results.object.mreconfig
window<-5
gr3<- graphW(experiment,window)
print(gr3)
ms<-getWindowMreStdev(experiment,window)
print(paste0("mre = ",ms[1]*100," %, stdev = ",ms[2]*100," %"))

# graficar todos los puntos con la ventana de menor mre ----
gr2<-graphFewerMre(temperature.results.object.mreconfig)
print(gr2)

# graficar n puntos con la ventana de menor mre ----
gr1<-graphNpointFewerMre(temperature.results.object.mreconfig,100)
print(gr1)





# ------------------------------------------------- IJCIS ----

p.mejores<-optimalGrid(c(1,1,4,9,8,26,21,14,5,26),"pressure","mre")
print(p.mejores)




# Temperature: Optimal grid, Configuration: cmre  ----
t.cmre.optimal<-optimalGrid(c(9,6,30,11,27,5,15,16,30,24),"temperature","mre")
print(t.cmre.optimal)


# IJCIS ----
# folder <- "/Users/davgutavi/NAS_DAVGUTAVI/INVESTIGACION/iot_smart_agent/recursos/img"
folder <- "/Users/davgutavi/NAS_DAVGUTAVI/INVESTIGACION/iot_smart_agent/ijcis_special_issue/ijcis_paper/img"

require(Cairo)

length <- 3.5
width  <- 8.5
units  <- "cm"


  
# Temperature part 1 ----

t.w3.m1 <- tsGraph("temperature","mre",3,1,"w3 m3")
ggsave("t_w3_m1.eps", plot=t.w3.m1,path=folder,width = width, height = length, units = units, device = cairo_ps)
t.w3.m29  <- tsGraph("temperature","mre",3,29,"w3 m29")
ggsave("t_w3_m29.eps",plot=t.w3.m29,path=folder,width = width, height = length, units = units,device = cairo_ps)

t.w4.m1    <- tsGraph("temperature","mre",4,1)
ggsave("t_w4_m1.eps",plot=t.w4.m1,path=folder,width = width, height = length, units = units,device = cairo_ps)
t.w4.m30    <- tsGraph("temperature","mre",4,30)
ggsave("t_w4_m30.eps",plot=t.w4.m30,path=folder,width = width, height = length, units = units, device = cairo_ps)

t.w6.m1   <- tsGraph("temperature","mre",6,1)
ggsave("t_w6_m1.eps",plot=t.w6.m1,path=folder,width = width, height = length, units = units,device = cairo_ps)
t.w6.m30    <- tsGraph("temperature","mre",6,30)
ggsave("t_w6_m30.eps",plot=t.w6.m30,path=folder,width = width, height = length, units = units,device = cairo_ps)

t.w12.m9   <- tsGraph("temperature","mre",12,9)
ggsave("t_w12_m9.eps",plot=t.w12.m9,path=folder,width = width, height = length, units = units,device = cairo_ps)
t.w12.m28   <- tsGraph("temperature","mre",12,28)
ggsave("t_w12_m28.eps",plot=t.w12.m28,path=folder,width = width, height = length, units = units,device = cairo_ps)

t.w24.m28   <- tsGraph("temperature","mre",24,28)
ggsave("t_w24_m28.eps",plot=t.w24.m28,path=folder,width = width, height = length, units = units,device = cairo_ps)
t.w24.m29   <- tsGraph("temperature","mre",24,29)
ggsave("t_w24_m29.eps",plot=t.w24.m29,path=folder,width = width, height = length, units = units,device = cairo_ps)

# Temperature part 2 ----

t.w90.m14   <- tsGraph("temperature","mre",90,14)
ggsave("t_w90_m14.eps",plot=t.w90.m14,path=folder,width = width, height = length, units = units,device = cairo_ps)
t.w90.m24   <- tsGraph("temperature","mre",90,24)
ggsave("t_w90_m24.eps",plot=t.w90.m24,path=folder,width = width, height = length, units = units,device = cairo_ps)

t.w180.m18  <- tsGraph("temperature","mre",180,18)
ggsave("t_w180_m18.eps",plot=t.w180.m18,path=folder,width = width, height = length, units = units,device = cairo_ps)
t.w180.m30  <- tsGraph("temperature","mre",180,30)
ggsave("t_w180_m30.eps",plot=t.w180.m30,path=folder,width = width, height = length, units = units,device = cairo_ps)

t.w360.m21  <- tsGraph("temperature","mre",360,21)
ggsave("t_w360_m21.eps",plot=t.w360.m21,path=folder,width = width, height = length, units = units,device = cairo_ps)
t.w360.m16  <- tsGraph("temperature","mre",360,16)
ggsave("t_w360_m16.eps",plot=t.w360.m16,path=folder,width = width, height = length, units = units,device = cairo_ps)

t.w720.m19  <- tsGraph("temperature","mre",720,19)
ggsave("t_w720_m19.eps",plot=t.w720.m19,path=folder,width = width, height = length, units = units,device = cairo_ps)
t.w720.m30  <- tsGraph("temperature","mre",720,30)
ggsave("t_w720_m30.eps",plot=t.w720.m30,path=folder,width = width, height = length, units = units,device = cairo_ps)

t.w1080.m1 <- tsGraph("temperature","mre",1080,1)
ggsave("t_w1080_m1.eps",plot=t.w1080.m1,path=folder,width = width, height = length, units = units,device = cairo_ps)
t.w1080.m24 <- tsGraph("temperature","mre",1080,24)
ggsave("t_w1080_m24.eps",plot=t.w1080.m24,path=folder,width = width, height = length, units = units,device = cairo_ps)

# Pressure part 1 ----

p.w3.m2    <- tsGraph("pressure","mre",3,2)
ggsave("p_w3_m2.eps",plot=p.w3.m2,path=folder,width = width, height = length,units = units,device = cairo_ps)
p.w3.m30    <- tsGraph("pressure","mre",3,30)
ggsave("p_w3_m30.eps",plot=p.w3.m30,path=folder,width = width, height = length,units = units,device = cairo_ps)

p.w4.m16   <- tsGraph("pressure","mre",4,16)
ggsave("p_w4_m16.eps",plot=p.w4.m16,path=folder,width = width, height = length,units = units,device = cairo_ps)
p.w4.m30    <- tsGraph("pressure","mre",4,30)
ggsave("p_w4_m30.eps",plot=p.w4.m30,path=folder,width = width, height = length,units = units,device = cairo_ps)

p.w6.m6    <- tsGraph("pressure","mre",6,6)
ggsave("p_w6_m6.eps",plot=p.w6.m6,path=folder,width = width, height = length,units = units,device = cairo_ps)
p.w6.m28    <- tsGraph("pressure","mre",6,28)
ggsave("p_w6_m28.eps",plot=p.w6.m28,path=folder,width = width, height = length,units = units,device = cairo_ps)

p.w12.m1   <- tsGraph("pressure","mre",12,1)
ggsave("p_w12_m1.eps",plot=p.w12.m1,path=folder,width = width, height = length,units = units,device = cairo_ps)
p.w12.m13   <- tsGraph("pressure","mre",12,13)
ggsave("p_w12_m13.eps",plot=p.w12.m13,path=folder,width = width, height = length,units = units,device = cairo_ps)

p.w24.m1   <- tsGraph("pressure","mre",24,1)
ggsave("p_w24_m1.eps",plot=p.w24.m1,path=folder,width = width, height = length,units = units,device = cairo_ps)
p.w24.m5   <- tsGraph("pressure","mre",24,5)
ggsave("p_w24_m5.eps",plot=p.w24.m5,path=folder,width = width, height = length,units = units,device = cairo_ps)


# Pressure part 2 ----

p.w90.m9   <- tsGraph("pressure","mre",90,9)
ggsave("p_w90_m9.eps",plot=p.w90.m9,path=folder,width = width, height = length,units = units,device = cairo_ps)
p.w90.m29   <- tsGraph("pressure","mre",90,29)
ggsave("p_w90_m29.eps",plot=p.w90.m29,path=folder,width = width, height = length,units = units,device = cairo_ps)

p.w180.m1  <- tsGraph("pressure","mre",180,1)
ggsave("p_w180_m1.eps",plot=p.w180.m1,path=folder,width = width, height = length,units = units,device = cairo_ps)
p.w180.m30  <- tsGraph("pressure","mre",180,30)
ggsave("p_w180_m30.eps",plot=p.w180.m30,path=folder,width = width, height = length,units = units,device = cairo_ps)

p.w360.m20  <- tsGraph("pressure","mre",360,20)
ggsave("p_w360_m20.eps",plot=p.w360.m20,path=folder,width = width, height = length,units = units,device = cairo_ps)
p.w360.m30  <- tsGraph("pressure","mre",360,30)
ggsave("p_w360_m30.eps",plot=p.w360.m30,path=folder,width = width, height = length,units = units,device = cairo_ps)

p.w720.m2  <- tsGraph("pressure","mre",720,2)
ggsave("p_w720_m2.eps",plot=p.w720.m2,path=folder,width = width, height = length,units = units,device = cairo_ps)
p.w720.m5  <- tsGraph("pressure","mre",720,5)
ggsave("p_w720_m5.eps",plot=p.w720.m5,path=folder,width = width, height = length,units = units,device = cairo_ps)

p.w1080.m5 <- tsGraph("pressure","mre",1080,5)
ggsave("p_w1080_m5.eps",plot=p.w1080.m5,path=folder,width = width, height = length,units = units,device = cairo_ps)
p.w1080.m26 <- tsGraph("pressure","mre",1080,26)
ggsave("p_w1080_m26.eps",plot=p.w1080.m26,path=folder,width = width, height = length,units = units,device = cairo_ps)







# *********************************



folder <- "/Users/davgutavi/NAS_DAVGUTAVI/INVESTIGACION/iot_smart_agent/ijcis_special_issue/ijcis_paper/img"
length <- 3.5
width  <- 8.5
units  <- "cm"

t.w360.m16 <- tsGraph("temperature","mre",360,16)
t.w360.m21 <- tsGraph("temperature","mre",360,21)
t.w6.m30   <- tsGraph("temperature","mre",6,30)
t.w6.m1    <- tsGraph("temperature","mre",6,1)

ggsave("t_w360_m16.eps",plot=t.w360.m16,path=folder,width = width, height = length, units = units,device = cairo_ps)
ggsave("t_w360_m21.eps",plot=t.w360.m21,path=folder,width = width, height = length, units = units,device = cairo_ps)
ggsave("t_w6_m30.eps",plot=t.w6.m30,path=folder,width = width, height = length, units = units,device = cairo_ps)
ggsave("t_w6_m1.eps",plot=t.w6.m1,path=folder,width = width, height = length, units = units,device = cairo_ps)

p.w24.m29 <- tsGraph("pressure","mre",24,29)
p.w24.m2  <- tsGraph("pressure","mre",24,2)
p.w12.30  <- tsGraph("pressure","mre",12,30)
p.w12.1   <- tsGraph("pressure","mre",12,1)

ggsave("p_w24_m29.eps",plot=p.w24.m29,path=folder,width = width, height = length,units = units,device = cairo_ps)
ggsave("p_w24_m2.eps",plot=p.w24.m2,path=folder,width = width, height = length,units = units,device = cairo_ps)
ggsave("p_w12_m30.eps",plot=p.w12.30,path=folder,width = width, height = length,units = units,device = cairo_ps)
ggsave("p_w12_m1.eps",plot=p.w12.1,path=folder,width = width, height = length,units = units,device = cairo_ps)




aux <- temperature.results.dfs.mreconfig[[8]]
aux2 <- aux[[16]]
t <- aux2[,c(360:370)]
a <- t[,c(2:5)]
write.csv(a,"/Users/davgutavi/Desktop/a.csv",dec ='.')

wpg <- windowPredictionsGrid("temperature","mre",360,0,5)
print(wpg)



# Neurocomputing combis ----
units  <- "cm"
width  <- 15
length <- 20
# folder <- "/Users/davgutavi/NAS_DAVGUTAVI/INVESTIGACION/iot_smart_agent/ijcis_special_issue/ijcis_paper/img"
# folder <- "/Users/davgutavi/NAS_DAVGUTAVI/INVESTIGACION/iot_smart_agent/ieee_internet_of_things_journal/ieee-iotj/img"
folder <- "/Users/davgutavi/Desktop/predicciones"

t.w3.m1   <- tsGraph("temperature","mre",3,1,expression(paste(bold("Worst model for w = 3: "),bold(M["1"]))))
t.w3.m29  <- tsGraph("temperature","mre",3,29,expression(paste(bold("Best model for w = 3: "),bold(M["29"]))))
t.w4.m1   <- tsGraph("temperature","mre",4,1,expression(paste(bold("Worst model for w = 4: "),bold(M["1"]))))
t.w4.m30  <- tsGraph("temperature","mre",4,30,expression(paste(bold("Best model for w = 4: "),bold(M["30"]))))
t.w6.m1   <- tsGraph("temperature","mre",6,1,expression(paste(bold("Worst model for w = 6: "),bold(M["1"]))))
t.w6.m30  <- tsGraph("temperature","mre",6,30,expression(paste(bold("Best model for w = 6: "),bold(M["30"]))))
t.w12.m9  <- tsGraph("temperature","mre",12,9,expression(paste(bold("Worst model for w = 12: "),bold(M["9"]))))
t.w12.m28 <- tsGraph("temperature","mre",12,28,expression(paste(bold("Best model for w = 12: "),bold(M["28"]))))
t.w24.m28 <- tsGraph("temperature","mre",24,28,expression(paste(bold("Worst model for w = 24: "),bold(M["28"]))))
t.w24.m29 <- tsGraph("temperature","mre",24,29,expression(paste(bold("Best model for w = 24: "),bold(M["29"]))))
t.p1 <- list(t.w3.m1,t.w3.m29,t.w4.m1,t.w4.m30,t.w6.m1,t.w6.m30,t.w12.m9,t.w12.m28,t.w24.m28,t.w24.m29,nrow=5,ncol=2)
t.p1.combi <- do.call(grid.arrange,t.p1)
ggsave("t_p1.eps",plot=t.p1.combi,path=folder,width = width, height = length,units = units,device = cairo_ps)

t.w90.m14   <- tsGraph("temperature","mre",90,14,expression(paste(bold("Worst model for w = 90: "),bold(M["14"]))))
t.w90.m24   <- tsGraph("temperature","mre",90,24,expression(paste(bold("Best model for w = 90: "),bold(M["24"]))))
t.w180.m18  <- tsGraph("temperature","mre",180,18,expression(paste(bold("Worst model for w = 180: "),bold(M["18"]))))
t.w180.m30  <- tsGraph("temperature","mre",180,30,expression(paste(bold("Best model for w = 180: "),bold(M["30"]))))
t.w360.m21  <- tsGraph("temperature","mre",360,21,expression(paste(bold("Worst model for w = 360: "),bold(M["21"]))))
t.w360.m16  <- tsGraph("temperature","mre",360,16,expression(paste(bold("Best model for w = 360: "),bold(M["16"]))))
t.w720.m19  <- tsGraph("temperature","mre",720,19,expression(paste(bold("Worst model for w = 720: "),bold(M["19"]))))
t.w720.m30  <- tsGraph("temperature","mre",720,30,expression(paste(bold("Best model for w = 720: "),bold(M["30"]))))
t.w1080.m1 <- tsGraph("temperature","mre",1080,1,expression(paste(bold("Worst model for w = 1080: "),bold(M["1"]))))
t.w1080.m24 <- tsGraph("temperature","mre",1080,24,expression(paste(bold("Best model for w = 1080: "),bold(M["24"]))))
t.p2 <- list(t.w90.m14,t.w90.m24,t.w180.m18,t.w180.m30,t.w360.m21,t.w360.m16,t.w720.m19,t.w720.m30,t.w1080.m1,t.w1080.m24,nrow=5,ncol=2)
t.p2.combi <- do.call(grid.arrange,t.p2)
ggsave("t_p2.eps",plot=t.p2.combi,path=folder,width = width, height = length,units = units,device = cairo_ps)


p.w3.m2   <- tsGraph("pressure","mre",3,2,expression(paste(bold("Worst model for w = 3: "),bold(M["3"]))))
p.w3.m30  <- tsGraph("pressure","mre",3,30,expression(paste(bold("Best model for w = 3: "),bold(M["30"]))))
p.w4.m16  <- tsGraph("pressure","mre",4,16,expression(paste(bold("Worst model for w = 4: "),bold(M["16"]))))
p.w4.m30  <- tsGraph("pressure","mre",4,30,expression(paste(bold("Best model for w = 4: "),bold(M["30"]))))
p.w6.m6   <- tsGraph("pressure","mre",6,6,expression(paste(bold("Worst model for w = 6: "),bold(M["6"]))))
p.w6.m28  <- tsGraph("pressure","mre",6,28,expression(paste(bold("Best model for w = 6: "),bold(M["28"]))))
p.w12.m1  <- tsGraph("pressure","mre",12,1,expression(paste(bold("Worst model for w = 12: "),bold(M["1"]))))
p.w12.m13 <- tsGraph("pressure","mre",12,13,expression(paste(bold("Best model for w = 12: "),bold(M["13"]))))
p.w24.m1  <- tsGraph("pressure","mre",24,1,expression(paste(bold("Worst model for w = 24: "),bold(M["1"]))))
p.w24.m5  <- tsGraph("pressure","mre",24,5,expression(paste(bold("Best model for w = 24: "),bold(M["5"]))))
p.p1 <- list(p.w3.m2,p.w3.m30,p.w4.m16,p.w4.m30,p.w6.m6,p.w6.m28,p.w12.m1,p.w12.m13,p.w24.m1,p.w24.m5,nrow=5,ncol=2)
p.p1.combi <- do.call(grid.arrange,p.p1)
ggsave("p_p1.eps",plot=p.p1.combi,path=folder,width = width, height = length,units = units,device = cairo_ps)

p.w90.m9    <- tsGraph("pressure","mre",90,9,expression(paste(bold("Worst model for w = 90: "),bold(M["9"]))))
p.w90.m29   <- tsGraph("pressure","mre",90,29,expression(paste(bold("Best model for w = 90: "),bold(M["29"]))))
p.w180.m1   <- tsGraph("pressure","mre",180,1,expression(paste(bold("Worst model for w = 180: "),bold(M["1"]))))
p.w180.m30  <- tsGraph("pressure","mre",180,30,expression(paste(bold("Best model for w = 180: "),bold(M["30"]))))
p.w360.m20  <- tsGraph("pressure","mre",360,20,expression(paste(bold("Worst model for w = 360: "),bold(M["20"]))))
p.w360.m30  <- tsGraph("pressure","mre",360,30,expression(paste(bold("Best model for w = 360: "),bold(M["30"]))))
p.w720.m2   <- tsGraph("pressure","mre",720,2,expression(paste(bold("Worst model for w = 720: "),bold(M["2"]))))
p.w720.m5   <- tsGraph("pressure","mre",720,5,expression(paste(bold("Best model for w = 720: "),bold(M["5"]))))
p.w1080.m5  <- tsGraph("pressure","mre",1080,5,expression(paste(bold("Worst model for w = 1080: "),bold(M["5"]))))
p.w1080.m26 <- tsGraph("pressure","mre",1080,26,expression(paste(bold("Best model for w = 1080: "),bold(M["26"]))))
p.p2 <- list(p.w90.m9,p.w90.m29,p.w180.m1,p.w180.m30,p.w360.m20,p.w360.m30,p.w720.m2,p.w720.m5,p.w1080.m5,p.w1080.m26,nrow=5,ncol=2)
p.p2.combi <- do.call(grid.arrange,p.p2)
ggsave("p_p2.eps",plot=p.p2.combi,path=folder,width = width, height = length,units = units,device = cairo_ps)


# Zoom out Neurocomputing combis ----
units  <- "cm"
width  <- 15
length <- 20
# folder <- "/Users/davgutavi/NAS_DAVGUTAVI/INVESTIGACION/iot_smart_agent/ijcis_special_issue/ijcis_paper/img"
# folder <- "/Users/davgutavi/NAS_DAVGUTAVI/INVESTIGACION/iot_smart_agent/ieee_internet_of_things_journal/ieee-iotj/img"
folder <- "/Users/davgutavi/Desktop/neurocomputing_figs"
t.ylimits <- c(0,50)

t.w3.m1   <- tsGraph("temperature","mre",3,1,expression(paste(bold("Worst model for w = 3: "),bold(M["1"]))),ylimits = t.ylimits)
t.w3.m29  <- tsGraph("temperature","mre",3,29,expression(paste(bold("Best model for w = 3: "),bold(M["29"]))),ylimits = t.ylimits)
t.w4.m1   <- tsGraph("temperature","mre",4,1,expression(paste(bold("Worst model for w = 4: "),bold(M["1"]))),ylimits = t.ylimits)
t.w4.m30  <- tsGraph("temperature","mre",4,30,expression(paste(bold("Best model for w = 4: "),bold(M["30"]))),ylimits = t.ylimits)
t.w6.m1   <- tsGraph("temperature","mre",6,1,expression(paste(bold("Worst model for w = 6: "),bold(M["1"]))),ylimits = t.ylimits)
t.w6.m30  <- tsGraph("temperature","mre",6,30,expression(paste(bold("Best model for w = 6: "),bold(M["30"]))),ylimits = t.ylimits)
t.w12.m9  <- tsGraph("temperature","mre",12,9,expression(paste(bold("Worst model for w = 12: "),bold(M["9"]))),ylimits = t.ylimits)
t.w12.m28 <- tsGraph("temperature","mre",12,28,expression(paste(bold("Best model for w = 12: "),bold(M["28"]))),ylimits = t.ylimits)
t.w24.m28 <- tsGraph("temperature","mre",24,28,expression(paste(bold("Worst model for w = 24: "),bold(M["28"]))),ylimits = t.ylimits)
t.w24.m29 <- tsGraph("temperature","mre",24,29,expression(paste(bold("Best model for w = 24: "),bold(M["29"]))),ylimits = t.ylimits)
t.p1 <- list(t.w3.m1,t.w3.m29,t.w4.m1,t.w4.m30,t.w6.m1,t.w6.m30,t.w12.m9,t.w12.m28,t.w24.m28,t.w24.m29,nrow=5,ncol=2)
t.p1.combi <- do.call(grid.arrange,t.p1)
ggsave("t_p1.eps",plot=t.p1.combi,path=folder,width = width, height = length,units = units,device = cairo_ps)

t.w90.m14   <- tsGraph("temperature","mre",90,14,expression(paste(bold("Worst model for w = 90: "),bold(M["14"]))),ylimits = t.ylimits)
t.w90.m24   <- tsGraph("temperature","mre",90,24,expression(paste(bold("Best model for w = 90: "),bold(M["24"]))),ylimits = t.ylimits)
t.w180.m18  <- tsGraph("temperature","mre",180,18,expression(paste(bold("Worst model for w = 180: "),bold(M["18"]))),ylimits = t.ylimits)
t.w180.m30  <- tsGraph("temperature","mre",180,30,expression(paste(bold("Best model for w = 180: "),bold(M["30"]))),ylimits = t.ylimits)
t.w360.m21  <- tsGraph("temperature","mre",360,21,expression(paste(bold("Worst model for w = 360: "),bold(M["21"]))),ylimits = t.ylimits)
t.w360.m16  <- tsGraph("temperature","mre",360,16,expression(paste(bold("Best model for w = 360: "),bold(M["16"]))),ylimits = t.ylimits)
t.w720.m19  <- tsGraph("temperature","mre",720,19,expression(paste(bold("Worst model for w = 720: "),bold(M["19"]))),ylimits = t.ylimits)
t.w720.m30  <- tsGraph("temperature","mre",720,30,expression(paste(bold("Best model for w = 720: "),bold(M["30"]))),ylimits = t.ylimits)
t.w1080.m1 <- tsGraph("temperature","mre",1080,1,expression(paste(bold("Worst model for w = 1080: "),bold(M["1"]))),ylimits = t.ylimits)
t.w1080.m24 <- tsGraph("temperature","mre",1080,24,expression(paste(bold("Best model for w = 1080: "),bold(M["24"]))),ylimits = t.ylimits)
t.p2 <- list(t.w90.m14,t.w90.m24,t.w180.m18,t.w180.m30,t.w360.m21,t.w360.m16,t.w720.m19,t.w720.m30,t.w1080.m1,t.w1080.m24,nrow=5,ncol=2)
t.p2.combi <- do.call(grid.arrange,t.p2)
ggsave("t_p2.eps",plot=t.p2.combi,path=folder,width = width, height = length,units = units,device = cairo_ps)

p.ylimits <- c(97000,108000)

p.w3.m2   <- tsGraph("pressure","mre",3,2,expression(paste(bold("Worst model for w = 3: "),bold(M["3"]))),ylimits = p.ylimits)
p.w3.m30  <- tsGraph("pressure","mre",3,30,expression(paste(bold("Best model for w = 3: "),bold(M["30"]))),ylimits = p.ylimits)
p.w4.m16  <- tsGraph("pressure","mre",4,16,expression(paste(bold("Worst model for w = 4: "),bold(M["16"]))),ylimits = p.ylimits)
p.w4.m30  <- tsGraph("pressure","mre",4,30,expression(paste(bold("Best model for w = 4: "),bold(M["30"]))),ylimits = p.ylimits)
p.w6.m6   <- tsGraph("pressure","mre",6,6,expression(paste(bold("Worst model for w = 6: "),bold(M["6"]))),ylimits = p.ylimits)
p.w6.m28  <- tsGraph("pressure","mre",6,28,expression(paste(bold("Best model for w = 6: "),bold(M["28"]))),ylimits = p.ylimits)
p.w12.m1  <- tsGraph("pressure","mre",12,1,expression(paste(bold("Worst model for w = 12: "),bold(M["1"]))),ylimits = p.ylimits)
p.w12.m13 <- tsGraph("pressure","mre",12,13,expression(paste(bold("Best model for w = 12: "),bold(M["13"]))),ylimits = p.ylimits)
p.w24.m1  <- tsGraph("pressure","mre",24,1,expression(paste(bold("Worst model for w = 24: "),bold(M["1"]))),ylimits = p.ylimits)
p.w24.m5  <- tsGraph("pressure","mre",24,5,expression(paste(bold("Best model for w = 24: "),bold(M["5"]))),ylimits = p.ylimits)
p.p1 <- list(p.w3.m2,p.w3.m30,p.w4.m16,p.w4.m30,p.w6.m6,p.w6.m28,p.w12.m1,p.w12.m13,p.w24.m1,p.w24.m5,nrow=5,ncol=2)
p.p1.combi <- do.call(grid.arrange,p.p1)
ggsave("p_p1.eps",plot=p.p1.combi,path=folder,width = width, height = length,units = units,device = cairo_ps)

p.w90.m9    <- tsGraph("pressure","mre",90,9,expression(paste(bold("Worst model for w = 90: "),bold(M["9"]))),ylimits = p.ylimits)
p.w90.m29   <- tsGraph("pressure","mre",90,29,expression(paste(bold("Best model for w = 90: "),bold(M["29"]))),ylimits = p.ylimits)
p.w180.m1   <- tsGraph("pressure","mre",180,1,expression(paste(bold("Worst model for w = 180: "),bold(M["1"]))),ylimits = p.ylimits)
p.w180.m30  <- tsGraph("pressure","mre",180,30,expression(paste(bold("Best model for w = 180: "),bold(M["30"]))),ylimits = p.ylimits)
p.w360.m20  <- tsGraph("pressure","mre",360,20,expression(paste(bold("Worst model for w = 360: "),bold(M["20"]))),ylimits = p.ylimits)
p.w360.m30  <- tsGraph("pressure","mre",360,30,expression(paste(bold("Best model for w = 360: "),bold(M["30"]))),ylimits = p.ylimits)
p.w720.m2   <- tsGraph("pressure","mre",720,2,expression(paste(bold("Worst model for w = 720: "),bold(M["2"]))),ylimits = p.ylimits)
p.w720.m5   <- tsGraph("pressure","mre",720,5,expression(paste(bold("Best model for w = 720: "),bold(M["5"]))),ylimits = p.ylimits)
p.w1080.m5  <- tsGraph("pressure","mre",1080,5,expression(paste(bold("Worst model for w = 1080: "),bold(M["5"]))),ylimits = p.ylimits)
p.w1080.m26 <- tsGraph("pressure","mre",1080,26,expression(paste(bold("Best model for w = 1080: "),bold(M["26"]))),ylimits = p.ylimits)
p.p2 <- list(p.w90.m9,p.w90.m29,p.w180.m1,p.w180.m30,p.w360.m20,p.w360.m30,p.w720.m2,p.w720.m5,p.w1080.m5,p.w1080.m26,nrow=5,ncol=2)
p.p2.combi <- do.call(grid.arrange,p.p2)
ggsave("p_p2.eps",plot=p.p2.combi,path=folder,width = width, height = length,units = units,device = cairo_ps)




















# IJCIS combis ----
t.w3.m1   <- tsGraph("temperature","mre",3,1,expression(paste(bold("Worst model for w = 3: "),bold(M["1"]))),pcl="red")
t.w3.m29  <- tsGraph("temperature","mre",3,29,expression(paste(bold("Best model for w = 3: "),bold(M["29"]))),pcl="green")
t.w4.m1   <- tsGraph("temperature","mre",4,1,expression(paste(bold("Worst model for w = 4: "),bold(M["1"]))),pcl="red")
t.w4.m30  <- tsGraph("temperature","mre",4,30,expression(paste(bold("Best model for w = 4: "),bold(M["30"]))),pcl="green")
t.w6.m1   <- tsGraph("temperature","mre",6,1,expression(paste(bold("Worst model for w = 6: "),bold(M["1"]))),pcl="red")
t.w6.m30  <- tsGraph("temperature","mre",6,30,expression(paste(bold("Best model for w = 6: "),bold(M["30"]))),pcl="green")
t.w12.m9  <- tsGraph("temperature","mre",12,9,expression(paste(bold("Worst model for w = 12: "),bold(M["9"]))),pcl="red")
t.w12.m28 <- tsGraph("temperature","mre",12,28,expression(paste(bold("Best model for w = 12: "),bold(M["28"]))),pcl="green")
t.w24.m28 <- tsGraph("temperature","mre",24,28,expression(paste(bold("Worst model for w = 24: "),bold(M["28"]))),pcl="red")
t.w24.m29 <- tsGraph("temperature","mre",24,29,expression(paste(bold("Best model for w = 24: "),bold(M["29"]))),pcl="green")
t.p1 <- list(t.w3.m1,t.w3.m29,t.w4.m1,t.w4.m30,t.w6.m1,t.w6.m30,t.w12.m9,t.w12.m28,t.w24.m28,t.w24.m29,nrow=5,ncol=2)
t.p1.combi <- do.call(grid.arrange,t.p1)
ggsave("t_p1.eps",plot=t.p1.combi,path=folder,width = width, height = length,units = units,device = cairo_ps)

t.w90.m14   <- tsGraph("temperature","mre",90,14,expression(paste(bold("Worst model for w = 90: "),bold(M["14"]))),pcl="red")
t.w90.m24   <- tsGraph("temperature","mre",90,24,expression(paste(bold("Best model for w = 90: "),bold(M["24"]))),pcl="green")
t.w180.m18  <- tsGraph("temperature","mre",180,18,expression(paste(bold("Worst model for w = 180: "),bold(M["18"]))),pcl="red")
t.w180.m30  <- tsGraph("temperature","mre",180,30,expression(paste(bold("Best model for w = 180: "),bold(M["30"]))),pcl="green")
t.w360.m21  <- tsGraph("temperature","mre",360,21,expression(paste(bold("Worst model for w = 360: "),bold(M["21"]))),pcl="red")
t.w360.m16  <- tsGraph("temperature","mre",360,16,expression(paste(bold("Best model for w = 360: "),bold(M["16"]))),pcl="green")
t.w720.m19  <- tsGraph("temperature","mre",720,19,expression(paste(bold("Worst model for w = 720: "),bold(M["19"]))),pcl="red")
t.w720.m30  <- tsGraph("temperature","mre",720,30,expression(paste(bold("Best model for w = 720: "),bold(M["30"]))),pcl="green")
t.w1080.m1 <- tsGraph("temperature","mre",1080,1,expression(paste(bold("Worst model for w = 1080: "),bold(M["1"]))),pcl="red")
t.w1080.m24 <- tsGraph("temperature","mre",1080,24,expression(paste(bold("Best model for w = 1080: "),bold(M["24"]))),pcl="black",ylimits = c(10,40))
t.p2 <- list(t.w90.m14,t.w90.m24,t.w180.m18,t.w180.m30,t.w360.m21,t.w360.m16,t.w720.m19,t.w720.m30,t.w1080.m1,t.w1080.m24,nrow=5,ncol=2)
t.p2.combi <- do.call(grid.arrange,t.p2)
ggsave("t_p2.eps",plot=t.p2.combi,path=folder,width = width, height = length,units = units,device = cairo_ps)


p.w3.m2   <- tsGraph("pressure","mre",3,2,expression(paste(bold("Worst model for w = 3: "),bold(M["3"]))),pcl="red")
p.w3.m30  <- tsGraph("pressure","mre",3,30,expression(paste(bold("Best model for w = 3: "),bold(M["30"]))),pcl="green")
p.w4.m16  <- tsGraph("pressure","mre",4,16,expression(paste(bold("Worst model for w = 4: "),bold(M["16"]))),pcl="red")
p.w4.m30  <- tsGraph("pressure","mre",4,30,expression(paste(bold("Best model for w = 4: "),bold(M["30"]))),pcl="green")
p.w6.m6   <- tsGraph("pressure","mre",6,6,expression(paste(bold("Worst model for w = 6: "),bold(M["6"]))),pcl="red")
p.w6.m28  <- tsGraph("pressure","mre",6,28,expression(paste(bold("Best model for w = 6: "),bold(M["28"]))),pcl="green")
p.w12.m1  <- tsGraph("pressure","mre",12,1,expression(paste(bold("Worst model for w = 12: "),bold(M["1"]))),pcl="red")
p.w12.m13 <- tsGraph("pressure","mre",12,13,expression(paste(bold("Best model for w = 12: "),bold(M["13"]))),pcl="green")
p.w24.m1  <- tsGraph("pressure","mre",24,1,expression(paste(bold("Worst model for w = 24: "),bold(M["1"]))),pcl="red")
p.w24.m5  <- tsGraph("pressure","mre",24,5,expression(paste(bold("Best model for w = 24: "),bold(M["5"]))),pcl="green")
p.p1 <- list(p.w3.m2,p.w3.m30,p.w4.m16,p.w4.m30,p.w6.m6,p.w6.m28,p.w12.m1,p.w12.m13,p.w24.m1,p.w24.m5,nrow=5,ncol=2)
p.p1.combi <- do.call(grid.arrange,p.p1)
ggsave("p_p1.eps",plot=p.p1.combi,path=folder,width = width, height = length,units = units,device = cairo_ps)

p.w90.m9    <- tsGraph("pressure","mre",90,9,expression(paste(bold("Worst model for w = 90: "),bold(M["9"]))),pcl="red")
p.w90.m29   <- tsGraph("pressure","mre",90,29,expression(paste(bold("Best model for w = 90: "),bold(M["29"]))),pcl="black")
p.w180.m1   <- tsGraph("pressure","mre",180,1,expression(paste(bold("Worst model for w = 180: "),bold(M["1"]))),pcl="red")
p.w180.m30  <- tsGraph("pressure","mre",180,30,expression(paste(bold("Best model for w = 180: "),bold(M["30"]))),pcl="green")
p.w360.m20  <- tsGraph("pressure","mre",360,20,expression(paste(bold("Worst model for w = 360: "),bold(M["20"]))),pcl="red")
p.w360.m30  <- tsGraph("pressure","mre",360,30,expression(paste(bold("Best model for w = 360: "),bold(M["30"]))),pcl="green")
p.w720.m2   <- tsGraph("pressure","mre",720,2,expression(paste(bold("Worst model for w = 720: "),bold(M["2"]))),pcl="red")
p.w720.m5   <- tsGraph("pressure","mre",720,5,expression(paste(bold("Best model for w = 720: "),bold(M["5"]))),pcl="green")
p.w1080.m5  <- tsGraph("pressure","mre",1080,5,expression(paste(bold("Worst model for w = 1080: "),bold(M["5"]))),pcl="red")
p.w1080.m26 <- tsGraph("pressure","mre",1080,26,expression(paste(bold("Best model for w = 1080: "),bold(M["26"]))),pcl="green")
p.p2 <- list(p.w90.m9,p.w90.m29,p.w180.m1,p.w180.m30,p.w360.m20,p.w360.m30,p.w720.m2,p.w720.m5,p.w1080.m5,p.w1080.m26,nrow=5,ncol=2)
p.p2.combi <- do.call(grid.arrange,p.p2)
ggsave("p_p2.eps",plot=p.p2.combi,path=folder,width = width, height = length,units = units,device = cairo_ps)


















