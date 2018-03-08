source("load_utilities.R")

# studies----
sf<- studyFrames()
l<-sf$ligth
p<-sf$pressure
t<-sf$temperature

# complete grid: light----
gl.re1<-paramWiGrid(l,var.info$re1,var.info$re1_ylab)
print(gl.re1)
gl.mre<-paramWiGrid(l,var.info$mre,var.info$mre_ylab)
print(gl.mre)

ggsave("light_re1.eps",plot=gl.re1,path=paths.studies.parametric,device = "eps")
ggsave("light_mre.eps",plot=gl.mre,path=paths.studies.parametric,device = "eps")

# complete grid: pressure---- 
gp.re1<-paramWiGrid(p,var.info$re1,var.info$re1_ylab)
print(gp.re1)
gp.mre<-paramWiGrid(p,var.info$mre,var.info$mre_ylab)
print(gp.mre)

ggsave("pressure_re1.eps",plot=gp.re1,path=paths.studies.parametric,device = "eps")
ggsave("pressure_mre.eps",plot=gp.mre,path=paths.studies.parametric,device = "eps")

# complete grid: temperature----
gt.re1<-paramWiGrid(t,var.info$re1,var.info$re1_ylab)
print(gt.re1)
gt.mre<-paramWiGrid(t,var.info$mre,var.info$mre_ylab)
print(gt.mre)

ggsave("temperature_re1.eps",plot=gt.re1,path=paths.studies.parametric,device = "eps")
ggsave("temperature_mre.eps",plot=gt.mre,path=paths.studies.parametric,device = "eps")