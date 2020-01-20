source("load_utilities.R")


#TFM###############################################
df<-getExperimentWindowNlplMre("re1")

dfl<- df[df$experiment=="light",-1]
dfp<- df[df$experiment=="pressure",-1]
dft<- df[df$experiment=="temperature",-1]

frame<-dft
nr<-5
nc<-5
gr<-ggplot(frame, aes(x = nlp,y = mre*100)) +
  geom_line() +
  facet_wrap(~w,labeller = label_both,scales="free",nrow = nr,ncol = nc)+
  labs(y = "mean relative error (%)", x="#lp") +
  theme_minimal() + 
  theme(panel.border = element_rect(color="black", fill=NA), 
        strip.background = element_rect(fill=NA, color="black"),
        axis.title = element_text(size = 10, face = "bold"),
        axis.text = element_text(size = 8),
        strip.text = element_text(size = 10),
        axis.text.x = element_text(angle = 90, hjust = 0.5)
  ) 
print(gr)

ggsave("incremental_light.eps",plot=gr,path="/Users/davgutavi/Desktop",device = "eps")
ggsave("incremental_pressure.eps",plot=gr,path="/Users/davgutavi/Desktop",device = "eps")
ggsave("incremental_temperature.eps",plot=gr,path="/Users/davgutavi/Desktop",device = "eps")

#RE1###############################################
# Light -> configuration: re1, output: re---- 
l.cre1.re<- getErrorGraphByExpAndPpi(light.results.object.re1config,ylimits = c(0,500))
print(l.cre1.re)
ggsave("light_cre1_re.eps",plot=l.cre1.re,path=paths.studies.re1config.incremental,device = "eps")
# Light -> configuration: re1, output: mre----
l.cre1.mre <- getMreGraphByExpAndPpi(light.results.object.re1config,ylimits=c(0,3000))
print(l.cre1.mre)
ggsave("light_cre1_mre.eps",plot=l.cre1.mre,path=paths.studies.re1config.incremental,device = "eps")

# Pressure -> configuration: re1, output: re----  
p.cre1.re <- getErrorGraphByExpAndPpi(pressure.results.object.re1config,ylimits = c(0,1.7))
print(p.cre1.re)
ggsave("pressure_cre1_re.eps",plot=p.cre1.re,path=paths.studies.re1config.incremental,device = "eps")
# Pressure -> configuration: re1, output: mre----  
p.cre1.mre <- getMreGraphByExpAndPpi(pressure.results.object.re1config,ylimits=NULL)
print(p.cre1.mre)
ggsave("pressure_cre1_mre.eps",plot=p.cre1.mre,path=paths.studies.re1config.incremental,device = "eps")

# Temperature -> configuration: re1, output: re----  
t.cre1.re <- getErrorGraphByExpAndPpi(temperature.results.object.re1config,ylimits = c(0,17))
print(t.cre1.re)
ggsave("tempetarure_cre1_re.eps",plot=t.cre1.re,path=paths.studies.re1config.incremental,device = "eps")
# Temperature -> configuration: re1, output: mre----  
t.cre1.mre <- getMreGraphByExpAndPpi(temperature.results.object.re1config,ylimits=NULL)
print(t.cre1.mre)
ggsave("tempetarure_cre1_mre.eps",plot=t.cre1.mre,path=paths.studies.re1config.incremental,device = "eps")

# Grid -> configuration: re1, output: re----
cre1.df.re<-getExperimentWindowNlplRe("re1")
cre1.gr.re<-graphReIncrementalGrid(cre1.df.re)
print(cre1.gr.re)
ggsave("grid_cre1_re.eps",plot=cre1.gr.re,path=paths.studies.re1config.incremental,device = "eps")

# Grid -> configuration: re1, output: mre----
cre1.df.mre<-getExperimentWindowNlplMre("re1")
cre1.gr.mre<-graphMreIncrementalGrid(cre1.df.mre)
print(cre1.gr.mre)
ggsave("grid_cre1_mre.eps",plot=cre1.gr.mre,path=paths.studies.re1config.incremental,device = "eps")

#MRE###############################################
# Light: -> configuration: mre, output: re---- 
l.cmre.re<- getErrorGraphByExpAndPpi(light.results.object.mreconfig,ylimits = c(0,100))
print(l.cmre.re)
ggsave("light_cmre_re.eps",plot=l.cmre.re,path=paths.studies.mreconfig.incremental,device = "eps")
# Light: -> configuration: mre, output: mre---- 
l.cmre.mre <- getMreGraphByExpAndPpi(light.results.object.mreconfig,ylimits=c(0,1000))
print(l.cmre.mre)
ggsave("light_cmre_mre.eps",plot=l.cmre.mre,path=paths.studies.mreconfig.incremental,device = "eps")

# Pressure -> configuration: mre, output: re----  
p.cmre.re <- getErrorGraphByExpAndPpi(pressure.results.object.mreconfig,ylimits = c(0,1.5))
print(p.cmre.re)
ggsave("pressure_cmre_re.eps",plot=p.cmre.re,path=paths.studies.mreconfig.incremental,device = "eps")
# Pressure -> configuration: mre, output: mre----  
p.cmre.mre <- getMreGraphByExpAndPpi(pressure.results.object.mreconfig,ylimits=c(0.4,0.8))
print(p.cmre.mre)
ggsave("pressure_cmre_mre.eps",plot=p.cmre.mre,path=paths.studies.mreconfig.incremental,device = "eps")

# Temperature -> configuration: mre, output: re----
t.cmre.re <- getErrorGraphByExpAndPpi(temperature.results.object.mreconfig,ylimits = c(0,17))
print(t.cmre.re)
ggsave("temperature_cmre_re.eps",plot=t.cmre.re,path=paths.studies.mreconfig.incremental,device = "eps")
# Temperature -> configuration: mre, output: mre----
t.cmre.mre <- getMreGraphByExpAndPpi(temperature.results.object.mreconfig,ylimits=NULL)
print(t.cmre.mre)
ggsave("temperature_cmre_mre.eps",plot=t.cmre.mre,path=paths.studies.mreconfig.incremental,device = "eps")

# Grid -> configuration: mre, output: re----
cmre.df.re<-getExperimentWindowNlplRe("mre")
cmre.gr.re<-graphReIncrementalGrid(cmre.df.re)
print(cmre.gr.re)
ggsave("grid_cmre_re.eps",plot=cmre.gr.re,path=paths.studies.mreconfig.incremental,device = "eps")

# Grid -> configuration: mre, output: mre----
cmre.df.mre<-getExperimentWindowNlplMre("mre")
cmre.gr.mre<-graphMreIncrementalGrid(cmre.df.mre)
print(cmre.gr.mre)
ggsave("grid_cmre_mre.eps",plot=cmre.gr.mre,path=paths.studies.mreconfig.incremental,device = "eps")




# IJCIS ----

source("load_utilities.R")
# folder <- "/Users/davgutavi/NAS_DAVGUTAVI/INVESTIGACION/iot_smart_agent/ijcis_special_issue/ijcis_paper/img"
# folder <- "/Users/davgutavi/NAS_DAVGUTAVI/INVESTIGACION/iot_smart_agent/ieee_internet_of_things_journal/ieee-iotj/img"
folder <- "/Users/davgutavi/Desktop/"

units  <- "cm"
# length <- 15
# width  <- 8

tmdf  <- getExpDf("t","mre")
tmgr <- grInclGrid(tmdf, c(7,10))
print(tmgr)

prdf  <- getExpDf("p","mre")
prgr <- grInclGrid(prdf, c(0.4,1))
print(prgr)

length <- 15
width  <- 20

ggsave("temperature_incremental.eps",plot=tmgr,path=folder,device =cairo_ps,width = width, height = length, units = units)
ggsave("pressure_incremental.eps",plot=prgr,path=folder,device =cairo_ps,width = width, height = length, units = units)




















