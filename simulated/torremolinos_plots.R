source("simulated/paths.R")
require(ggplot2)

# Presure ---- 
torremolinos.pressure <- read.csv(path.torremolinos.pressure)
torremolinos.pressure.01 <- torremolinos.pressure[torremolinos.pressure$entity_id=="weatherobserved-torremolinos-01",]
torremolinos.pressure.02 <- torremolinos.pressure[torremolinos.pressure$entity_id=="weatherobserved-torremolinos-02",]
torremolinos.pressure.03 <- torremolinos.pressure[torremolinos.pressure$entity_id=="weatherobserved-torremolinos-03",]
torremolinos.pressure.04 <- torremolinos.pressure[torremolinos.pressure$entity_id=="weatherobserved-torremolinos-04",]

torremolinos.01.rows <- nrow(torremolinos.pressure.01)
torremolinos.02.rows <- nrow(torremolinos.pressure.02)
torremolinos.03.rows <- nrow(torremolinos.pressure.03)
torremolinos.04.rows <- nrow(torremolinos.pressure.04)
torremolinos.01.timePoints <- c(1:torremolinos.01.rows)
torremolinos.02.timePoints <- c(1:torremolinos.02.rows)
torremolinos.03.timePoints <- c(1:torremolinos.03.rows)
torremolinos.04.timePoints <- c(1:torremolinos.04.rows)

ggplot(torremolinos.pressure.01, aes(x=c(1:nrow(torremolinos.pressure.01)),y = atmosphericPressure)) + geom_line() 
ggplot(torremolinos.pressure.02, aes(x=c(1:nrow(torremolinos.pressure.02)),y = atmosphericPressure)) + geom_line() 
ggplot(torremolinos.pressure.03, aes(x=c(1:nrow(torremolinos.pressure.03)),y = atmosphericPressure)) + geom_line()
ggplot(torremolinos.pressure.04, aes(x=c(1:nrow(torremolinos.pressure.04)),y = atmosphericPressure)) + geom_line()

# Precipitation ---- 
torremolinos.precipitation <- read.csv(path.torremolinos.precipitation)
torremolinos.precipitation.01 <- torremolinos.precipitation[torremolinos.precipitation$entity_id=="weatherobserved-torremolinos-01",]
torremolinos.precipitation.02 <- torremolinos.precipitation[torremolinos.precipitation$entity_id=="weatherobserved-torremolinos-02",]
torremolinos.precipitation.03 <- torremolinos.precipitation[torremolinos.precipitation$entity_id=="weatherobserved-torremolinos-03",]
torremolinos.precipitation.04 <- torremolinos.precipitation[torremolinos.precipitation$entity_id=="weatherobserved-torremolinos-04",]

ggplot(torremolinos.precipitation.01, aes(x=c(1:nrow(torremolinos.precipitation.01)),y = precipitation)) + geom_line() 
ggplot(torremolinos.precipitation.02, aes(x=c(1:nrow(torremolinos.precipitation.02)),y = precipitation)) + geom_line() 
ggplot(torremolinos.precipitation.03, aes(x=c(1:nrow(torremolinos.precipitation.03)),y = precipitation)) + geom_line()
ggplot(torremolinos.precipitation.04, aes(x=c(1:nrow(torremolinos.precipitation.04)),y = precipitation)) + geom_line()

# Humidity ---- 
torremolinos.humidity <- read.csv(path.torremolinos.humidity)
torremolinos.humidity.01 <- torremolinos.humidity[torremolinos.humidity$entity_id=="weatherobserved-torremolinos-01",]
torremolinos.humidity.02 <- torremolinos.humidity[torremolinos.humidity$entity_id=="weatherobserved-torremolinos-02",]
torremolinos.humidity.03 <- torremolinos.humidity[torremolinos.humidity$entity_id=="weatherobserved-torremolinos-03",]
torremolinos.humidity.04 <- torremolinos.humidity[torremolinos.humidity$entity_id=="weatherobserved-torremolinos-04",]

ggplot(torremolinos.humidity.01, aes(x=c(1:nrow(torremolinos.humidity.01)),y = relativeHumidity)) + geom_line() 
ggplot(torremolinos.humidity.02, aes(x=c(1:nrow(torremolinos.humidity.02)),y = relativeHumidity)) + geom_line() 
ggplot(torremolinos.humidity.03, aes(x=c(1:nrow(torremolinos.humidity.03)),y = relativeHumidity)) + geom_line()
ggplot(torremolinos.humidity.04, aes(x=c(1:nrow(torremolinos.humidity.04)),y = relativeHumidity)) + geom_line()

# Radiation ---- 
torremolinos.radiation <- read.csv(path.torremolinos.radiation)
torremolinos.radiation.01 <- torremolinos.radiation[torremolinos.radiation$entity_id=="weatherobserved-torremolinos-01",]
torremolinos.radiation.02 <- torremolinos.radiation[torremolinos.radiation$entity_id=="weatherobserved-torremolinos-02",]
torremolinos.radiation.03 <- torremolinos.radiation[torremolinos.radiation$entity_id=="weatherobserved-torremolinos-03",]
torremolinos.radiation.04 <- torremolinos.radiation[torremolinos.radiation$entity_id=="weatherobserved-torremolinos-04",]

ggplot(torremolinos.radiation.01, aes(x=c(1:nrow(torremolinos.radiation.01)),y = solarRadiation)) + geom_line() 
ggplot(torremolinos.radiation.02, aes(x=c(1:nrow(torremolinos.radiation.02)),y = solarRadiation)) + geom_line() 
ggplot(torremolinos.radiation.03, aes(x=c(1:nrow(torremolinos.radiation.03)),y = solarRadiation)) + geom_line()
ggplot(torremolinos.radiation.04, aes(x=c(1:nrow(torremolinos.radiation.04)),y = solarRadiation)) + geom_line()

# Temperature ---- 
torremolinos.temperature <- read.csv(path.torremolinos.temperature)
torremolinos.temperature.01 <- torremolinos.temperature[torremolinos.temperature$entity_id=="weatherobserved-torremolinos-01",]
torremolinos.temperature.02 <- torremolinos.temperature[torremolinos.temperature$entity_id=="weatherobserved-torremolinos-02",]
torremolinos.temperature.03 <- torremolinos.temperature[torremolinos.temperature$entity_id=="weatherobserved-torremolinos-03",]
torremolinos.temperature.04 <- torremolinos.temperature[torremolinos.temperature$entity_id=="weatherobserved-torremolinos-04",]

ggplot(torremolinos.temperature.01, aes(x=c(1:nrow(torremolinos.temperature.01)),y = temperature)) + geom_line() 
ggplot(torremolinos.temperature.02, aes(x=c(1:nrow(torremolinos.temperature.02)),y = temperature)) + geom_line() 
ggplot(torremolinos.temperature.03, aes(x=c(1:nrow(torremolinos.temperature.03)),y = temperature)) + geom_line()
ggplot(torremolinos.temperature.04, aes(x=c(1:nrow(torremolinos.temperature.04)),y = temperature)) + geom_line()

# Direction ---- 
torremolinos.direction <- read.csv(path.torremolinos.direction)
torremolinos.direction.01 <- torremolinos.direction[torremolinos.direction$entity_id=="weatherobserved-torremolinos-01",]
torremolinos.direction.02 <- torremolinos.direction[torremolinos.direction$entity_id=="weatherobserved-torremolinos-02",]
torremolinos.direction.03 <- torremolinos.direction[torremolinos.direction$entity_id=="weatherobserved-torremolinos-03",]
torremolinos.direction.04 <- torremolinos.direction[torremolinos.direction$entity_id=="weatherobserved-torremolinos-04",]

ggplot(torremolinos.direction.01, aes(x=c(1:nrow(torremolinos.direction.01)),y = windDirection)) + geom_line() 
ggplot(torremolinos.direction.02, aes(x=c(1:nrow(torremolinos.direction.02)),y = windDirection)) + geom_line() 
ggplot(torremolinos.direction.03, aes(x=c(1:nrow(torremolinos.direction.03)),y = windDirection)) + geom_line()
ggplot(torremolinos.direction.04, aes(x=c(1:nrow(torremolinos.direction.04)),y = windDirection)) + geom_line()

# Speed ---- 
torremolinos.speed <- read.csv(path.torremolinos.speed)
torremolinos.speed.01 <- torremolinos.speed[torremolinos.speed$entity_id=="weatherobserved-torremolinos-01",]
torremolinos.speed.02 <- torremolinos.speed[torremolinos.speed$entity_id=="weatherobserved-torremolinos-02",]
torremolinos.speed.03 <- torremolinos.speed[torremolinos.speed$entity_id=="weatherobserved-torremolinos-03",]
torremolinos.speed.04 <- torremolinos.speed[torremolinos.speed$entity_id=="weatherobserved-torremolinos-04",]

ggplot(torremolinos.speed.01, aes(x=c(1:nrow(torremolinos.speed.01)),y = windSpeed)) + geom_line() 
ggplot(torremolinos.speed.02, aes(x=c(1:nrow(torremolinos.speed.02)),y = windSpeed)) + geom_line() 
ggplot(torremolinos.speed.03, aes(x=c(1:nrow(torremolinos.speed.03)),y = windSpeed)) + geom_line()
ggplot(torremolinos.speed.04, aes(x=c(1:nrow(torremolinos.speed.04)),y = windSpeed)) + geom_line()