source("simulated/paths.R")
require(ggplot2)

# Presure ---- 
rincondelavictoria.pressure <- read.csv(path.rincondelavictoria.pressure)
rincondelavictoria.pressure.01 <- rincondelavictoria.pressure[rincondelavictoria.pressure$entity_id=="weatherobserved-rincondelavictoria-01",]

rincondelavictoria.01.rows <- nrow(rincondelavictoria.pressure.01)
rincondelavictoria.01.timePoints <- c(1:rincondelavictoria.01.rows)

ggplot(rincondelavictoria.pressure.01, aes(x=c(1:nrow(rincondelavictoria.pressure.01)),y = atmosphericPressure)) + geom_line() 

# Precipitation ---- 
rincondelavictoria.precipitation <- read.csv(path.rincondelavictoria.precipitation)
rincondelavictoria.precipitation.01 <- rincondelavictoria.precipitation[rincondelavictoria.precipitation$entity_id=="weatherobserved-rincondelavictoria-01",]

ggplot(rincondelavictoria.precipitation.01, aes(x=c(1:nrow(rincondelavictoria.precipitation.01)),y = precipitation)) + geom_line() 

# Humidity ---- 
rincondelavictoria.humidity <- read.csv(path.rincondelavictoria.humidity)
rincondelavictoria.humidity.01 <- rincondelavictoria.humidity[rincondelavictoria.humidity$entity_id=="weatherobserved-rincondelavictoria-01",]

ggplot(rincondelavictoria.humidity.01, aes(x=c(1:nrow(rincondelavictoria.humidity.01)),y = relativeHumidity)) + geom_line() 

# Radiation ---- 
rincondelavictoria.radiation <- read.csv(path.rincondelavictoria.radiation)
rincondelavictoria.radiation.01 <- rincondelavictoria.radiation[rincondelavictoria.radiation$entity_id=="weatherobserved-rincondelavictoria-01",]

ggplot(rincondelavictoria.radiation.01, aes(x=c(1:nrow(rincondelavictoria.radiation.01)),y = solarRadiation)) + geom_line() 

# Temperature ---- 
rincondelavictoria.temperature <- read.csv(path.rincondelavictoria.temperature)
rincondelavictoria.temperature.01 <- rincondelavictoria.temperature[rincondelavictoria.temperature$entity_id=="weatherobserved-rincondelavictoria-01",]

ggplot(rincondelavictoria.temperature.01, aes(x=c(1:nrow(rincondelavictoria.temperature.01)),y = temperature)) + geom_line() 

# Direction ---- 
rincondelavictoria.direction <- read.csv(path.rincondelavictoria.direction)
rincondelavictoria.direction.01 <- rincondelavictoria.direction[rincondelavictoria.direction$entity_id=="weatherobserved-rincondelavictoria-01",]

ggplot(rincondelavictoria.direction.01, aes(x=c(1:nrow(rincondelavictoria.direction.01)),y = windDirection)) + geom_line() 

# Speed ---- 
rincondelavictoria.speed <- read.csv(path.rincondelavictoria.speed)
rincondelavictoria.speed.01 <- rincondelavictoria.speed[rincondelavictoria.speed$entity_id=="weatherobserved-rincondelavictoria-01",]

ggplot(rincondelavictoria.speed.01, aes(x=c(1:nrow(rincondelavictoria.speed.01)),y = windSpeed)) + geom_line() 