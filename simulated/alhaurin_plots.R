source("simulated/paths.R")
require(ggplot2)

# Presure ---- 
alhaurin.pressure <- read.csv(path.alhaurin.pressure)
alhaurin.pressure.01 <- alhaurin.pressure[alhaurin.pressure$entity_id=="weatherobserved-alhaurindelatorre-01",]
alhaurin.pressure.02 <- alhaurin.pressure[alhaurin.pressure$entity_id=="weatherobserved-alhaurindelatorre-02",]
alhaurin.pressure.03 <- alhaurin.pressure[alhaurin.pressure$entity_id=="weatherobserved-alhaurindelatorre-03",]
alhaurin.pressure.04 <- alhaurin.pressure[alhaurin.pressure$entity_id=="weatherobserved-alhaurindelatorre-04",]

alhaurin.01.rows <- nrow(alhaurin.pressure.01)
alhaurin.02.rows <- nrow(alhaurin.pressure.02)
alhaurin.03.rows <- nrow(alhaurin.pressure.03)
alhaurin.04.rows <- nrow(alhaurin.pressure.04)
alhaurin.01.timePoints <- c(1:alhaurin.01.rows)
alhaurin.02.timePoints <- c(1:alhaurin.02.rows)
alhaurin.03.timePoints <- c(1:alhaurin.03.rows)
alhaurin.04.timePoints <- c(1:alhaurin.04.rows)

ggplot(alhaurin.pressure.01, aes(x=alhaurin.01.timePoints,y = atmosphericPressure)) + geom_line() 
ggplot(alhaurin.pressure.02, aes(x=alhaurin.02.timePoints,y = atmosphericPressure)) + geom_line() 
ggplot(alhaurin.pressure.03, aes(x=alhaurin.03.timePoints,y = atmosphericPressure)) + geom_line()
ggplot(alhaurin.pressure.04, aes(x=alhaurin.04.timePoints,y = atmosphericPressure)) + geom_line()

# Precipitation ---- 
alhaurin.precipitation <- read.csv(path.alhaurin.precipitation)
alhaurin.precipitation.01 <- alhaurin.precipitation[alhaurin.precipitation$entity_id=="weatherobserved-alhaurindelatorre-01",]
alhaurin.precipitation.02 <- alhaurin.precipitation[alhaurin.precipitation$entity_id=="weatherobserved-alhaurindelatorre-02",]
alhaurin.precipitation.03 <- alhaurin.precipitation[alhaurin.precipitation$entity_id=="weatherobserved-alhaurindelatorre-03",]
alhaurin.precipitation.04 <- alhaurin.precipitation[alhaurin.precipitation$entity_id=="weatherobserved-alhaurindelatorre-04",]

ggplot(alhaurin.precipitation.01, aes(x=c(1:nrow(alhaurin.precipitation.01)),y = precipitation)) + geom_line() 
ggplot(alhaurin.precipitation.02, aes(x=c(1:nrow(alhaurin.precipitation.02)),y = precipitation)) + geom_line() 
ggplot(alhaurin.precipitation.03, aes(x=c(1:nrow(alhaurin.precipitation.03)),y = precipitation)) + geom_line()
ggplot(alhaurin.precipitation.04, aes(x=c(1:nrow(alhaurin.precipitation.04)),y = precipitation)) + geom_line()

# Humidity ---- 
alhaurin.humidity <- read.csv(path.alhaurin.humidity)
alhaurin.humidity.01 <- alhaurin.humidity[alhaurin.humidity$entity_id=="weatherobserved-alhaurindelatorre-01",]
alhaurin.humidity.02 <- alhaurin.humidity[alhaurin.humidity$entity_id=="weatherobserved-alhaurindelatorre-02",]
alhaurin.humidity.03 <- alhaurin.humidity[alhaurin.humidity$entity_id=="weatherobserved-alhaurindelatorre-03",]
alhaurin.humidity.04 <- alhaurin.humidity[alhaurin.humidity$entity_id=="weatherobserved-alhaurindelatorre-04",]

ggplot(alhaurin.humidity.01, aes(x=c(1:nrow(alhaurin.humidity.01)),y = relativeHumidity)) + geom_line() 
ggplot(alhaurin.humidity.02, aes(x=c(1:nrow(alhaurin.humidity.02)),y = relativeHumidity)) + geom_line() 
ggplot(alhaurin.humidity.03, aes(x=c(1:nrow(alhaurin.humidity.03)),y = relativeHumidity)) + geom_line()
ggplot(alhaurin.humidity.04, aes(x=c(1:nrow(alhaurin.humidity.04)),y = relativeHumidity)) + geom_line()

# Radiation ---- 
alhaurin.radiation <- read.csv(path.alhaurin.radiation)
alhaurin.radiation.01 <- alhaurin.radiation[alhaurin.radiation$entity_id=="weatherobserved-alhaurindelatorre-01",]
alhaurin.radiation.02 <- alhaurin.radiation[alhaurin.radiation$entity_id=="weatherobserved-alhaurindelatorre-02",]
alhaurin.radiation.03 <- alhaurin.radiation[alhaurin.radiation$entity_id=="weatherobserved-alhaurindelatorre-03",]
alhaurin.radiation.04 <- alhaurin.radiation[alhaurin.radiation$entity_id=="weatherobserved-alhaurindelatorre-04",]

ggplot(alhaurin.radiation.01, aes(x=c(1:nrow(alhaurin.radiation.01)),y = solarRadiation)) + geom_line() 
ggplot(alhaurin.radiation.02, aes(x=c(1:nrow(alhaurin.radiation.02)),y = solarRadiation)) + geom_line() 
ggplot(alhaurin.radiation.03, aes(x=c(1:nrow(alhaurin.radiation.03)),y = solarRadiation)) + geom_line()
ggplot(alhaurin.radiation.04, aes(x=c(1:nrow(alhaurin.radiation.04)),y = solarRadiation)) + geom_line()

# Temperature ---- 
alhaurin.temperature <- read.csv(path.alhaurin.temperature)
alhaurin.temperature.01 <- alhaurin.temperature[alhaurin.temperature$entity_id=="weatherobserved-alhaurindelatorre-01",]
alhaurin.temperature.02 <- alhaurin.temperature[alhaurin.temperature$entity_id=="weatherobserved-alhaurindelatorre-02",]
alhaurin.temperature.03 <- alhaurin.temperature[alhaurin.temperature$entity_id=="weatherobserved-alhaurindelatorre-03",]
alhaurin.temperature.04 <- alhaurin.temperature[alhaurin.temperature$entity_id=="weatherobserved-alhaurindelatorre-04",]

ggplot(alhaurin.temperature.01, aes(x=c(1:nrow(alhaurin.temperature.01)),y = temperature)) + geom_line() 
ggplot(alhaurin.temperature.02, aes(x=c(1:nrow(alhaurin.temperature.02)),y = temperature)) + geom_line() 
ggplot(alhaurin.temperature.03, aes(x=c(1:nrow(alhaurin.temperature.03)),y = temperature)) + geom_line()
ggplot(alhaurin.temperature.04, aes(x=c(1:nrow(alhaurin.temperature.04)),y = temperature)) + geom_line()

# Direction ---- 
alhaurin.direction <- read.csv(path.alhaurin.direction)
alhaurin.direction.01 <- alhaurin.direction[alhaurin.direction$entity_id=="weatherobserved-alhaurindelatorre-01",]
alhaurin.direction.02 <- alhaurin.direction[alhaurin.direction$entity_id=="weatherobserved-alhaurindelatorre-02",]
alhaurin.direction.03 <- alhaurin.direction[alhaurin.direction$entity_id=="weatherobserved-alhaurindelatorre-03",]
alhaurin.direction.04 <- alhaurin.direction[alhaurin.direction$entity_id=="weatherobserved-alhaurindelatorre-04",]

ggplot(alhaurin.direction.01, aes(x=c(1:nrow(alhaurin.direction.01)),y = windDirection)) + geom_line() 
ggplot(alhaurin.direction.02, aes(x=c(1:nrow(alhaurin.direction.02)),y = windDirection)) + geom_line() 
ggplot(alhaurin.direction.03, aes(x=c(1:nrow(alhaurin.direction.03)),y = windDirection)) + geom_line()
ggplot(alhaurin.direction.04, aes(x=c(1:nrow(alhaurin.direction.04)),y = windDirection)) + geom_line()

# Speed ---- 
alhaurin.speed <- read.csv(path.alhaurin.speed)
alhaurin.speed.01 <- alhaurin.speed[alhaurin.speed$entity_id=="weatherobserved-alhaurindelatorre-01",]
alhaurin.speed.02 <- alhaurin.speed[alhaurin.speed$entity_id=="weatherobserved-alhaurindelatorre-02",]
alhaurin.speed.03 <- alhaurin.speed[alhaurin.speed$entity_id=="weatherobserved-alhaurindelatorre-03",]
alhaurin.speed.04 <- alhaurin.speed[alhaurin.speed$entity_id=="weatherobserved-alhaurindelatorre-04",]

ggplot(alhaurin.speed.01, aes(x=c(1:nrow(alhaurin.speed.01)),y = windSpeed)) + geom_line() 
ggplot(alhaurin.speed.02, aes(x=c(1:nrow(alhaurin.speed.02)),y = windSpeed)) + geom_line() 
ggplot(alhaurin.speed.03, aes(x=c(1:nrow(alhaurin.speed.03)),y = windSpeed)) + geom_line()
ggplot(alhaurin.speed.04, aes(x=c(1:nrow(alhaurin.speed.04)),y = windSpeed)) + geom_line()