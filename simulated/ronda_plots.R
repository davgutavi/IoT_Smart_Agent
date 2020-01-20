source("simulated/paths.R")
require(ggplot2)

# Presure ---- 
ronda.pressure <- read.csv(path.ronda.pressure)
ronda.pressure.01 <- ronda.pressure[ronda.pressure$entity_id=="weatherobserved-ronda-01",]

ronda.01.rows <- nrow(ronda.pressure.01)
ronda.01.timePoints <- c(1:ronda.01.rows)

ggplot(ronda.pressure.01, aes(x=c(1:nrow(ronda.pressure.01)),y = atmosphericPressure)) + geom_line() 

# Precipitation ---- 
ronda.precipitation <- read.csv(path.ronda.precipitation)
ronda.precipitation.01 <- ronda.precipitation[ronda.precipitation$entity_id=="weatherobserved-ronda-01",]

ggplot(ronda.precipitation.01, aes(x=c(1:nrow(ronda.precipitation.01)),y = precipitation)) + geom_line() 

# Humidity ---- 
ronda.humidity <- read.csv(path.ronda.humidity)
ronda.humidity.01 <- ronda.humidity[ronda.humidity$entity_id=="weatherobserved-ronda-01",]

ggplot(ronda.humidity.01, aes(x=c(1:nrow(ronda.humidity.01)),y = relativeHumidity)) + geom_line() 

# Radiation ---- 
ronda.radiation <- read.csv(path.ronda.radiation)
ronda.radiation.01 <- ronda.radiation[ronda.radiation$entity_id=="weatherobserved-ronda-01",]

ggplot(ronda.radiation.01, aes(x=c(1:nrow(ronda.radiation.01)),y = solarRadiation)) + geom_line() 

# Temperature ---- 
ronda.temperature <- read.csv(path.ronda.temperature)
ronda.temperature.01 <- ronda.temperature[ronda.temperature$entity_id=="weatherobserved-ronda-01",]

ggplot(ronda.temperature.01, aes(x=c(1:nrow(ronda.temperature.01)),y = temperature)) + geom_line() 

# Direction ---- 
ronda.direction <- read.csv(path.ronda.direction)
ronda.direction.01 <- ronda.direction[ronda.direction$entity_id=="weatherobserved-ronda-01",]

ggplot(ronda.direction.01, aes(x=c(1:nrow(ronda.direction.01)),y = windDirection)) + geom_line() 

# Speed ---- 
ronda.speed <- read.csv(path.ronda.speed)
ronda.speed.01 <- ronda.speed[ronda.speed$entity_id=="weatherobserved-ronda-01",]

ggplot(ronda.speed.01, aes(x=c(1:nrow(ronda.speed.01)),y = windSpeed)) + geom_line() 