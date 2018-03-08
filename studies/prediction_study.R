source("load_utilities.R")

# Ligth: Optimal grid, Configuration: cre1  ----
l.cre1.optimal<-optimalGrid(c(13,13,4,2,2,2,25,1,16,1),"light","re1")
print(l.cre1.optimal)
ggsave("light_cre1_optimal.eps",plot=l.cre1.optimal,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)

# Ligth: Optimal grid, Configuration: cmre  ----
l.cmre.optimal<-optimalGrid(c(1,1,1,1,2,1,1,1,1,21),"light","mre")
print(l.cmre.optimal)
ggsave("light_cmre_optimal.eps",plot=l.cmre.optimal,path=paths.studies.mreconfig.prediction,device = "eps",width = 20, height = 10)

# Pressure: Optimal grid, Configuration: cre1  ----
p.cre1.optimal<-optimalGrid(c(25,1,27,13,5,6,1,2,5,26),"pressure","re1")
print(p.cre1.optimal)
ggsave("pressure_cre1_optimal.eps",plot=p.cre1.optimal,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)

# Pressure: Optimal grid, Configuration: cmre  ----
p.cmre.optimal<-optimalGrid(c(1,1,4,9,8,26,21,14,5,26),"pressure","mre")
print(p.cmre.optimal)
ggsave("pressure_cmre_optimal.eps",plot=p.cmre.optimal,path=paths.studies.mreconfig.prediction,device = "eps",width = 20, height = 10)

# Temperature: Optimal grid, Configuration: cre1  ----
t.cre1.optimal<-optimalGrid(c(18,30,30,5,5,5,24,25,22,20),"temperature","re1")
print(t.cre1.optimal)
ggsave("temperature_cre1_optimal.eps",plot=t.cre1.optimal,path=paths.studies.re1config.prediction,device = "eps",width = 20, height = 10)

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