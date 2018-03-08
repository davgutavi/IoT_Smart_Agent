source("load_utilities.R")

# Stdev study----
dfs<-statisticalDfs()
gr.statistical<-stdevGraph(dfs)
print(gr.statistical)
ggsave("mean_stdev_grid.eps",plot=gr.statistical,path=paths.studies.statistics,device = "eps")

# Stats study: load data----
ldf<-read.csv(paths.datasets.raw.light,header = F)
names(ldf)[1]="value"
pdf<-read.csv(paths.datasets.raw.pressure,header = F)
names(pdf)[1]="value"
tdf<-read.csv(paths.datasets.raw.temperature,header = F)
names(tdf)[1]="value"

# Stats study: boxplots----
gr.boxplot.light<-boxGraph(ldf,labels.statistic.ligtvalues)
print(gr.boxplot.light)
gr.boxplot.pressure<-boxGraph(pdf,labels.statistic.pressurevalues)
print(gr.boxplot.pressure)
gr.boxplot.temperature<-boxGraph(tdf,labels.statistic.temperaturevalues)
print(gr.boxplot.temperature)
ggsave("light_boxplot.eps",plot=gr.boxplot.light,path=paths.studies.statistics,device = "eps")
ggsave("pressure_boxplot.eps",plot=gr.boxplot.pressure,path=paths.studies.statistics,device = "eps")
ggsave("temperature_boxplot.eps",plot=gr.boxplot.temperature,path=paths.studies.statistics,device = "eps")

# Stats study: histograms----
gr.histogram.light<-histogramGraph(ldf,labels.statistic.ligtvalues,45)
print(gr.histogram.light)
gr.histogram.pressure<-histogramGraph(pdf,labels.statistic.pressurevalues,45)
print(gr.histogram.pressure)
gr.histogram.temperature<-histogramGraph(tdf,labels.statistic.temperaturevalues,0.2)
print(gr.histogram.temperature)
ggsave("light_histogram.eps",plot=gr.histogram.light,path=paths.studies.statistics,device = "eps")
ggsave("pressure_histogramt.eps",plot=gr.histogram.pressure,path=paths.studies.statistics,device = "eps")
ggsave("temperature_histogram.eps",plot=gr.histogram.temperature,path=paths.studies.statistics,device = "eps")





# Stats study: pareto----
gr.pareto.light<-paretoGraph(x=ldf$value)
print(gr.pareto.light)
gr.pareto.pressure<-paretoGraph(x=pdf$value)
print(gr.pareto.pressure)
gr.pareto.temperature<-paretoGraph(x=tdf$value)
print(gr.pareto.temperature)
ggsave("light_pareto.eps",plot=gr.pareto.light,path=paths.studies.statistics,device = "eps")
ggsave("pressure_pareto.eps",plot=gr.pareto.pressure,path=paths.studies.statistics,device = "eps")
ggsave("temperature_pareto.eps",plot=gr.pareto.temperature,path=paths.studies.statistics,device = "eps")



# Otros----
stdLux<-grReStdev(1,lux_measures,lux.results.re1)
print(stdLux)
stdTemp<-grReStdev(1,temperature_measures,temperature_results)
print(stdTemp)
stdPress<-grReStdev(1,pressure_measures,pressure_results)
print(stdPress)
dfp<-getStdDf(pressure_measures,"pressure")
grp<-windowExperimentGraph(dfp)
print(grp)
grall<-completeStdevStudyGr(lux_measures,temperature_measures,pressure_measures)
print(grall)
windowIndex<-1
lux_window_measures<-lux_measures[[windowIndex]]
lux_window_measures_study<-stdevStudy(lux_window_measures)
temperature_window_measures<-temperature_measures[[windowIndex]]
temperature_window_measures_study<-stdevStudy(temperature_window_measures)
pressure_window_measures<-pressure_measures[[windowIndex]]
pressure_window_measures_study<-stdevStudy(pressure_window_measures)
df<-data.frame(nlp=lux_window_measures_study[,"nlp"],
               lux=lux_window_measures_study$nstdev,
               temperature=temperature_window_measures_study$nstdev,
               pression= pressure_window_measures_study$nstdev)
ndf <- melt(df, "nlp")
ggplot(ndf, aes(x = nlp,y = value,group = variable,color = variable)) +
  geom_line() +
  labs(y = "normalized stdev",x="#lp") +
  theme(
    axis.text = element_text(size = 8),
    axis.title = element_text(size = 8, face = "bold"),
    legend.text = element_text(size = 8, face = "bold"),
    legend.title = element_text(size = 8, face = "bold")
  )
temperature_window_measures<-temperature_measures[[windowIndex]]
temperature_window_measures_study<-stdevStudy(temperature_window_measures)
pressure_window_measures<-pressure_measures[[windowIndex]]
pressure_window_measures_study<-stdevStudy(pressure_window_measures)
df<-data.frame(nlp=lux_window_measures_study[,"nlp"],
               lux=lux_window_measures_study$nstdev,
               temperature=temperature_window_measures_study$nstdev,
               pression= pressure_window_measures_study$nstdev)
ndf <- melt(df, "nlp")
ggplot(ndf, aes(x = nlp,y = value,group = variable,color = variable)) +
  geom_line() +
  labs(y = "normalized stdev",x="#lp") +
  theme(
    axis.text = element_text(size = 8),
    axis.title = element_text(size = 8, face = "bold"),
    legend.text = element_text(size = 8, face = "bold"),
    legend.title = element_text(size = 8, face = "bold")
  )