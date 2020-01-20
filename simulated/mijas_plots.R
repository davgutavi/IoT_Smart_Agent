source("simulated/paths.R")
require(ggplot2)

# Presure ---- 
mijas.pressure <- read.csv(path.mijas.pressure)
mijas.pressure.01 <- mijas.pressure[mijas.pressure$entity_id=="weatherobserved-mijas-01",]
mijas.pressure.02 <- mijas.pressure[mijas.pressure$entity_id=="weatherobserved-mijas-02",]
mijas.pressure.03 <- mijas.pressure[mijas.pressure$entity_id=="weatherobserved-mijas-03",]
mijas.pressure.04 <- mijas.pressure[mijas.pressure$entity_id=="weatherobserved-mijas-04",]
mijas.pressure.05 <- mijas.pressure[mijas.pressure$entity_id=="weatherobserved-mijas-05",]

mijas.01.rows <- nrow(mijas.pressure.01)
mijas.02.rows <- nrow(mijas.pressure.02)
mijas.03.rows <- nrow(mijas.pressure.03)
mijas.04.rows <- nrow(mijas.pressure.04)
mijas.05.rows <- nrow(mijas.pressure.05)
mijas.01.timePoints <- c(1:mijas.01.rows)
mijas.02.timePoints <- c(1:mijas.02.rows)
mijas.03.timePoints <- c(1:mijas.03.rows)
mijas.04.timePoints <- c(1:mijas.04.rows)
mijas.05.timePoints <- c(1:mijas.05.rows)

ggplot(mijas.pressure.01, aes(x=c(1:nrow(mijas.pressure.01)),y = atmosphericPressure)) + geom_line() 
ggplot(mijas.pressure.02, aes(x=c(1:nrow(mijas.pressure.02)),y = atmosphericPressure)) + geom_line() 
ggplot(mijas.pressure.03, aes(x=c(1:nrow(mijas.pressure.03)),y = atmosphericPressure)) + geom_line()
ggplot(mijas.pressure.04, aes(x=c(1:nrow(mijas.pressure.04)),y = atmosphericPressure)) + geom_line()
ggplot(mijas.pressure.05, aes(x=c(1:nrow(mijas.pressure.05)),y = atmosphericPressure)) + geom_line()

# Precipitation ---- 
mijas.precipitation <- read.csv(path.mijas.precipitation)
mijas.precipitation.01 <- mijas.precipitation[mijas.precipitation$entity_id=="weatherobserved-mijas-01",]
mijas.precipitation.02 <- mijas.precipitation[mijas.precipitation$entity_id=="weatherobserved-mijas-02",]
mijas.precipitation.03 <- mijas.precipitation[mijas.precipitation$entity_id=="weatherobserved-mijas-03",]
mijas.precipitation.04 <- mijas.precipitation[mijas.precipitation$entity_id=="weatherobserved-mijas-04",]
mijas.precipitation.05 <- mijas.precipitation[mijas.precipitation$entity_id=="weatherobserved-mijas-05",]

ggplot(mijas.precipitation.01, aes(x=c(1:nrow(mijas.precipitation.01)),y = precipitation)) + geom_line() 
ggplot(mijas.precipitation.02, aes(x=c(1:nrow(mijas.precipitation.02)),y = precipitation)) + geom_line() 
ggplot(mijas.precipitation.03, aes(x=c(1:nrow(mijas.precipitation.03)),y = precipitation)) + geom_line()
ggplot(mijas.precipitation.04, aes(x=c(1:nrow(mijas.precipitation.04)),y = precipitation)) + geom_line()
ggplot(mijas.precipitation.05, aes(x=c(1:nrow(mijas.precipitation.05)),y = precipitation)) + geom_line()

# Humidity ---- 
mijas.humidity <- read.csv(path.mijas.humidity)
mijas.humidity.01 <- mijas.humidity[mijas.humidity$entity_id=="weatherobserved-mijas-01",]
mijas.humidity.02 <- mijas.humidity[mijas.humidity$entity_id=="weatherobserved-mijas-02",]
mijas.humidity.03 <- mijas.humidity[mijas.humidity$entity_id=="weatherobserved-mijas-03",]
mijas.humidity.04 <- mijas.humidity[mijas.humidity$entity_id=="weatherobserved-mijas-04",]
mijas.humidity.05 <- mijas.humidity[mijas.humidity$entity_id=="weatherobserved-mijas-05",]

ggplot(mijas.humidity.01, aes(x=c(1:nrow(mijas.humidity.01)),y = relativeHumidity)) + geom_line() 
ggplot(mijas.humidity.02, aes(x=c(1:nrow(mijas.humidity.02)),y = relativeHumidity)) + geom_line() 
ggplot(mijas.humidity.03, aes(x=c(1:nrow(mijas.humidity.03)),y = relativeHumidity)) + geom_line()
ggplot(mijas.humidity.04, aes(x=c(1:nrow(mijas.humidity.04)),y = relativeHumidity)) + geom_line()
ggplot(mijas.humidity.05, aes(x=c(1:nrow(mijas.humidity.05)),y = relativeHumidity)) + geom_line()

# Radiation ---- 
mijas.radiation <- read.csv(path.mijas.radiation)
mijas.radiation.01 <- mijas.radiation[mijas.radiation$entity_id=="weatherobserved-mijas-01",]
mijas.radiation.02 <- mijas.radiation[mijas.radiation$entity_id=="weatherobserved-mijas-02",]
mijas.radiation.03 <- mijas.radiation[mijas.radiation$entity_id=="weatherobserved-mijas-03",]
mijas.radiation.04 <- mijas.radiation[mijas.radiation$entity_id=="weatherobserved-mijas-04",]
mijas.radiation.05 <- mijas.radiation[mijas.radiation$entity_id=="weatherobserved-mijas-05",]

ggplot(mijas.radiation.01, aes(x=c(1:nrow(mijas.radiation.01)),y = solarRadiation)) + geom_line() 
ggplot(mijas.radiation.02, aes(x=c(1:nrow(mijas.radiation.02)),y = solarRadiation)) + geom_line() 
ggplot(mijas.radiation.03, aes(x=c(1:nrow(mijas.radiation.03)),y = solarRadiation)) + geom_line()
ggplot(mijas.radiation.04, aes(x=c(1:nrow(mijas.radiation.04)),y = solarRadiation)) + geom_line()
ggplot(mijas.radiation.05, aes(x=c(1:nrow(mijas.radiation.05)),y = solarRadiation)) + geom_line()

# Temperature ---- 
mijas.temperature <- read.csv(path.mijas.temperature)
mijas.temperature.01 <- mijas.temperature[mijas.temperature$entity_id=="weatherobserved-mijas-01",]
mijas.temperature.02 <- mijas.temperature[mijas.temperature$entity_id=="weatherobserved-mijas-02",]
mijas.temperature.03 <- mijas.temperature[mijas.temperature$entity_id=="weatherobserved-mijas-03",]
mijas.temperature.04 <- mijas.temperature[mijas.temperature$entity_id=="weatherobserved-mijas-04",]
mijas.temperature.05 <- mijas.temperature[mijas.temperature$entity_id=="weatherobserved-mijas-05",]

ggplot(mijas.temperature.01, aes(x=c(1:nrow(mijas.temperature.01)),y = temperature)) + geom_line() 
ggplot(mijas.temperature.02, aes(x=c(1:nrow(mijas.temperature.02)),y = temperature)) + geom_line() 
ggplot(mijas.temperature.03, aes(x=c(1:nrow(mijas.temperature.03)),y = temperature)) + geom_line()
ggplot(mijas.temperature.04, aes(x=c(1:nrow(mijas.temperature.04)),y = temperature)) + geom_line()
ggplot(mijas.temperature.05, aes(x=c(1:nrow(mijas.temperature.05)),y = temperature)) + geom_line()

# Direction ---- 
mijas.direction <- read.csv(path.mijas.direction)
mijas.direction.01 <- mijas.direction[mijas.direction$entity_id=="weatherobserved-mijas-01",]
mijas.direction.02 <- mijas.direction[mijas.direction$entity_id=="weatherobserved-mijas-02",]
mijas.direction.03 <- mijas.direction[mijas.direction$entity_id=="weatherobserved-mijas-03",]
mijas.direction.04 <- mijas.direction[mijas.direction$entity_id=="weatherobserved-mijas-04",]
mijas.direction.05 <- mijas.direction[mijas.direction$entity_id=="weatherobserved-mijas-05",]

ggplot(mijas.direction.01, aes(x=c(1:nrow(mijas.direction.01)),y = windDirection)) + geom_line() 
ggplot(mijas.direction.02, aes(x=c(1:nrow(mijas.direction.02)),y = windDirection)) + geom_line() 
ggplot(mijas.direction.03, aes(x=c(1:nrow(mijas.direction.03)),y = windDirection)) + geom_line()
ggplot(mijas.direction.04, aes(x=c(1:nrow(mijas.direction.04)),y = windDirection)) + geom_line()
ggplot(mijas.direction.05, aes(x=c(1:nrow(mijas.direction.05)),y = windDirection)) + geom_line()

# Speed ---- 
mijas.speed <- read.csv(path.mijas.speed)
mijas.speed.01 <- mijas.speed[mijas.speed$entity_id=="weatherobserved-mijas-01",]
mijas.speed.02 <- mijas.speed[mijas.speed$entity_id=="weatherobserved-mijas-02",]
mijas.speed.03 <- mijas.speed[mijas.speed$entity_id=="weatherobserved-mijas-03",]
mijas.speed.04 <- mijas.speed[mijas.speed$entity_id=="weatherobserved-mijas-04",]
mijas.speed.05 <- mijas.speed[mijas.speed$entity_id=="weatherobserved-mijas-05",]

ggplot(mijas.speed.01, aes(x=c(1:nrow(mijas.speed.01)),y = windSpeed)) + geom_line() 
ggplot(mijas.speed.02, aes(x=c(1:nrow(mijas.speed.02)),y = windSpeed)) + geom_line() 
ggplot(mijas.speed.03, aes(x=c(1:nrow(mijas.speed.03)),y = windSpeed)) + geom_line()
ggplot(mijas.speed.04, aes(x=c(1:nrow(mijas.speed.04)),y = windSpeed)) + geom_line()
ggplot(mijas.speed.05, aes(x=c(1:nrow(mijas.speed.05)),y = windSpeed)) + geom_line()