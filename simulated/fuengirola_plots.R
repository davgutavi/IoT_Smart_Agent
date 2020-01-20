source("simulated/paths.R")
require(ggplot2)

# Presure ---- 
fuengirola.pressure <- read.csv(path.fuengirola.pressure)
fuengirola.pressure.01 <- fuengirola.pressure[fuengirola.pressure$entity_id=="weatherobserved-fuengirola-01",]
fuengirola.pressure.02 <- fuengirola.pressure[fuengirola.pressure$entity_id=="weatherobserved-fuengirola-02",]
fuengirola.pressure.03 <- fuengirola.pressure[fuengirola.pressure$entity_id=="weatherobserved-fuengirola-03",]
fuengirola.pressure.04 <- fuengirola.pressure[fuengirola.pressure$entity_id=="weatherobserved-fuengirola-04",]

fuengirola.01.rows <- nrow(fuengirola.pressure.01)
fuengirola.02.rows <- nrow(fuengirola.pressure.02)
fuengirola.03.rows <- nrow(fuengirola.pressure.03)
fuengirola.04.rows <- nrow(fuengirola.pressure.04)
fuengirola.01.timePoints <- c(1:fuengirola.01.rows)
fuengirola.02.timePoints <- c(1:fuengirola.02.rows)
fuengirola.03.timePoints <- c(1:fuengirola.03.rows)
fuengirola.04.timePoints <- c(1:fuengirola.04.rows)

ggplot(fuengirola.pressure.01, aes(x=c(1:nrow(fuengirola.pressure.01)),y = atmosphericPressure)) + geom_line() 
ggplot(fuengirola.pressure.02, aes(x=c(1:nrow(fuengirola.pressure.02)),y = atmosphericPressure)) + geom_line() 
ggplot(fuengirola.pressure.03, aes(x=c(1:nrow(fuengirola.pressure.03)),y = atmosphericPressure)) + geom_line()
ggplot(fuengirola.pressure.04, aes(x=c(1:nrow(fuengirola.pressure.04)),y = atmosphericPressure)) + geom_line()

# Precipitation ---- 
fuengirola.precipitation <- read.csv(path.fuengirola.precipitation)
fuengirola.precipitation.01 <- fuengirola.precipitation[fuengirola.precipitation$entity_id=="weatherobserved-fuengirola-01",]
fuengirola.precipitation.02 <- fuengirola.precipitation[fuengirola.precipitation$entity_id=="weatherobserved-fuengirola-02",]
fuengirola.precipitation.03 <- fuengirola.precipitation[fuengirola.precipitation$entity_id=="weatherobserved-fuengirola-03",]
fuengirola.precipitation.04 <- fuengirola.precipitation[fuengirola.precipitation$entity_id=="weatherobserved-fuengirola-04",]

ggplot(fuengirola.precipitation.01, aes(x=c(1:nrow(fuengirola.precipitation.01)),y = precipitation)) + geom_line() 
ggplot(fuengirola.precipitation.02, aes(x=c(1:nrow(fuengirola.precipitation.02)),y = precipitation)) + geom_line() 
ggplot(fuengirola.precipitation.03, aes(x=c(1:nrow(fuengirola.precipitation.03)),y = precipitation)) + geom_line()
ggplot(fuengirola.precipitation.04, aes(x=c(1:nrow(fuengirola.precipitation.04)),y = precipitation)) + geom_line()

# Humidity ---- 
fuengirola.humidity <- read.csv(path.fuengirola.humidity)
fuengirola.humidity.01 <- fuengirola.humidity[fuengirola.humidity$entity_id=="weatherobserved-fuengirola-01",]
fuengirola.humidity.02 <- fuengirola.humidity[fuengirola.humidity$entity_id=="weatherobserved-fuengirola-02",]
fuengirola.humidity.03 <- fuengirola.humidity[fuengirola.humidity$entity_id=="weatherobserved-fuengirola-03",]
fuengirola.humidity.04 <- fuengirola.humidity[fuengirola.humidity$entity_id=="weatherobserved-fuengirola-04",]

ggplot(fuengirola.humidity.01, aes(x=c(1:nrow(fuengirola.humidity.01)),y = relativeHumidity)) + geom_line() 
ggplot(fuengirola.humidity.02, aes(x=c(1:nrow(fuengirola.humidity.02)),y = relativeHumidity)) + geom_line() 
ggplot(fuengirola.humidity.03, aes(x=c(1:nrow(fuengirola.humidity.03)),y = relativeHumidity)) + geom_line()
ggplot(fuengirola.humidity.04, aes(x=c(1:nrow(fuengirola.humidity.04)),y = relativeHumidity)) + geom_line()

# Radiation ---- 
fuengirola.radiation <- read.csv(path.fuengirola.radiation)
fuengirola.radiation.01 <- fuengirola.radiation[fuengirola.radiation$entity_id=="weatherobserved-fuengirola-01",]
fuengirola.radiation.02 <- fuengirola.radiation[fuengirola.radiation$entity_id=="weatherobserved-fuengirola-02",]
fuengirola.radiation.03 <- fuengirola.radiation[fuengirola.radiation$entity_id=="weatherobserved-fuengirola-03",]
fuengirola.radiation.04 <- fuengirola.radiation[fuengirola.radiation$entity_id=="weatherobserved-fuengirola-04",]

ggplot(fuengirola.radiation.01, aes(x=c(1:nrow(fuengirola.radiation.01)),y = solarRadiation)) + geom_line() 
ggplot(fuengirola.radiation.02, aes(x=c(1:nrow(fuengirola.radiation.02)),y = solarRadiation)) + geom_line() 
ggplot(fuengirola.radiation.03, aes(x=c(1:nrow(fuengirola.radiation.03)),y = solarRadiation)) + geom_line()
ggplot(fuengirola.radiation.04, aes(x=c(1:nrow(fuengirola.radiation.04)),y = solarRadiation)) + geom_line()

# Temperature ---- 
fuengirola.temperature <- read.csv(path.fuengirola.temperature)
fuengirola.temperature.01 <- fuengirola.temperature[fuengirola.temperature$entity_id=="weatherobserved-fuengirola-01",]
fuengirola.temperature.02 <- fuengirola.temperature[fuengirola.temperature$entity_id=="weatherobserved-fuengirola-02",]
fuengirola.temperature.03 <- fuengirola.temperature[fuengirola.temperature$entity_id=="weatherobserved-fuengirola-03",]
fuengirola.temperature.04 <- fuengirola.temperature[fuengirola.temperature$entity_id=="weatherobserved-fuengirola-04",]

ggplot(fuengirola.temperature.01, aes(x=c(1:nrow(fuengirola.temperature.01)),y = temperature)) + geom_line() 
ggplot(fuengirola.temperature.02, aes(x=c(1:nrow(fuengirola.temperature.02)),y = temperature)) + geom_line() 
ggplot(fuengirola.temperature.03, aes(x=c(1:nrow(fuengirola.temperature.03)),y = temperature)) + geom_line()
ggplot(fuengirola.temperature.04, aes(x=c(1:nrow(fuengirola.temperature.04)),y = temperature)) + geom_line()

# Direction ---- 
fuengirola.direction <- read.csv(path.fuengirola.direction)
fuengirola.direction.01 <- fuengirola.direction[fuengirola.direction$entity_id=="weatherobserved-fuengirola-01",]
fuengirola.direction.02 <- fuengirola.direction[fuengirola.direction$entity_id=="weatherobserved-fuengirola-02",]
fuengirola.direction.03 <- fuengirola.direction[fuengirola.direction$entity_id=="weatherobserved-fuengirola-03",]
fuengirola.direction.04 <- fuengirola.direction[fuengirola.direction$entity_id=="weatherobserved-fuengirola-04",]

ggplot(fuengirola.direction.01, aes(x=c(1:nrow(fuengirola.direction.01)),y = windDirection)) + geom_line() 
ggplot(fuengirola.direction.02, aes(x=c(1:nrow(fuengirola.direction.02)),y = windDirection)) + geom_line() 
ggplot(fuengirola.direction.03, aes(x=c(1:nrow(fuengirola.direction.03)),y = windDirection)) + geom_line()
ggplot(fuengirola.direction.04, aes(x=c(1:nrow(fuengirola.direction.04)),y = windDirection)) + geom_line()

# Speed ---- 
fuengirola.speed <- read.csv(path.fuengirola.speed)
fuengirola.speed.01 <- fuengirola.speed[fuengirola.speed$entity_id=="weatherobserved-fuengirola-01",]
fuengirola.speed.02 <- fuengirola.speed[fuengirola.speed$entity_id=="weatherobserved-fuengirola-02",]
fuengirola.speed.03 <- fuengirola.speed[fuengirola.speed$entity_id=="weatherobserved-fuengirola-03",]
fuengirola.speed.04 <- fuengirola.speed[fuengirola.speed$entity_id=="weatherobserved-fuengirola-04",]

ggplot(fuengirola.speed.01, aes(x=c(1:nrow(fuengirola.speed.01)),y = windSpeed)) + geom_line() 
ggplot(fuengirola.speed.02, aes(x=c(1:nrow(fuengirola.speed.02)),y = windSpeed)) + geom_line() 
ggplot(fuengirola.speed.03, aes(x=c(1:nrow(fuengirola.speed.03)),y = windSpeed)) + geom_line()
ggplot(fuengirola.speed.04, aes(x=c(1:nrow(fuengirola.speed.04)),y = windSpeed)) + geom_line()