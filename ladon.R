require(ggplot2)

df <- read.csv("/home/davgutavi/Escritorio/medidas_ladon_03.csv")
# df$size <- factor(df$size,levels = c("7 MB", "70 MB", "700 MB", "7 GB", "70 GB"))


gr <- ggplot(df, aes(x=Size, y=Time, group=Strategy)) + 
  geom_line(aes(color=Strategy,linetype= Strategy)) +
  xlab("Data size (GB)")+
  ylab("Uploading time (s)")+
  scale_color_manual(values=c("Black", "Blue","Red","Black","Blue","Red")) +
  scale_linetype_manual(values = c("solid", "solid","solid","dashed","dashed","dashed")) +
  theme(axis.text.y   = element_text(size=14),
        axis.text.x   = element_text(size=14),
        axis.title.y  = element_text(size=14),
        axis.title.x  = element_text(size=14),
        axis.line = element_line(colour = "black"),
        panel.border = element_rect(colour = "black", fill=NA, size=1))
print (gr)

ggsave(gr,file="/home/davgutavi/Escritorio/ladonChart.eps",width = 10, height = 10)