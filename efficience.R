source("load_utilities.R")
require(ggplot2)

path <- "/Users/davgutavi/Desktop/efficience_4col.csv"

df <- read.csv(path, sep = ";")
df$window <- factor(df$window, levels=c("w = 3","w = 4","w = 6", "w = 12", "w = 24", "w = 90", "w = 180", "w = 360", "w = 720", "w = 1080"))
# df$size <- factor(df$size, levels=c("10 MB","100 MB","1 GB", "4 GB", "10 GB"))
df$size <- factor(df$size, levels=c("10 MB","100 MB","1 GB", "10 GB"))
df$cores <- factor(df$cores, levels=c("2 cores","4 cores","8 cores", "24 cores", "48 cores"))

nr <- 2
nc <- 5
fs <- 7

gr <- ggplot(df, aes(x = s,y = t, group=cores)) +
  geom_line(aes(color=cores,linetype=cores)) +
  geom_point(aes(color=cores)) +
  facet_wrap(. ~ window, scales="free",nrow = nr,ncol = nc)+
  # ylim(c(NA,200))+
  labs(x="Batch size",y = "Time (seconds)") +
  
  theme(panel.border     = element_rect(fill=NA, color="black"),
        strip.background = element_rect(fill="NA"),
        strip.text       = element_text(size = fs, face = "bold", family = "mono"),
        axis.title       = element_text(size = fs, face = "bold", family = "mono"),
        axis.text        = element_text(size = fs, family = "mono"),
        axis.text.x      = element_text(angle = 90, hjust = 0.5),
        legend.text      = element_text(size = fs, family = "mono"),
        legend.title     = element_blank(),
        legend.position  = "top"
  )
print(gr)
folder <- "/Users/davgutavi/Desktop"
ggsave("efficiency.eps",plot=gr,path=folder,device =cairo_ps,width = 20, height = 15, units = "cm")



gr <- ggplot(df, aes(x = cores,y = t, group=size)) +
  geom_line(aes(color=size)) +
  geom_point(aes(color=size)) +
  facet_wrap(. ~ window, scales="fixed",nrow = nr,ncol = nc)+
  labs(x="time (seconds)",y = "batch size") +
  ylim(0, 100)+
  theme(panel.border     = element_rect(fill=NA, color="black"),
        strip.background = element_rect(fill="NA"),
        axis.title       = element_text(size = fs, face = "bold", family = "mono"),
        axis.text        = element_text(size = fs, family = "mono"),
        strip.text       = element_text(size = fs, face = "bold", family = "mono"),
        axis.text.x      = element_text(angle = 90, hjust = 0.5),
        legend.text      = element_text(size = fs, family = "mono"),
        legend.title     = element_blank(),
        legend.position  = "top"
  )
print(gr)

require(Cairo)
#folder <- "/Users/davgutavi/NAS_DAVGUTAVI/INVESTIGACION/iot_smart_agent/ieee_internet_of_things_journal/ieee-iotj/img"
folder <- "/Users/davgutavi/Desktop/IOT-NEUROCOMPUTING/img"
ggsave("efficiency.eps",plot=gr,path=folder,device =cairo_ps,width = 20, height = 15, units = "cm")

