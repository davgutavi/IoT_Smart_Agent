source("simulated/paths.R")
require(ggplot2)

# Presure ---- 
benalmadena.pressure <- read.csv(path.benalmadena.pressure)
benalmadena.pressure.01 <- benalmadena.pressure[benalmadena.pressure$entity_id=="weatherobserved-benalmadena-01",]
benalmadena.pressure.02 <- benalmadena.pressure[benalmadena.pressure$entity_id=="weatherobserved-benalmadena-02",]
benalmadena.pressure.03 <- benalmadena.pressure[benalmadena.pressure$entity_id=="weatherobserved-benalmadena-03",]
benalmadena.pressure.04 <- benalmadena.pressure[benalmadena.pressure$entity_id=="weatherobserved-benalmadena-04",]

benalmadena.01.rows <- nrow(benalmadena.pressure.01)
benalmadena.02.rows <- nrow(benalmadena.pressure.02)
benalmadena.03.rows <- nrow(benalmadena.pressure.03)
benalmadena.04.rows <- nrow(benalmadena.pressure.04)
benalmadena.01.timePoints <- c(1:benalmadena.01.rows)
benalmadena.02.timePoints <- c(1:benalmadena.02.rows)
benalmadena.03.timePoints <- c(1:benalmadena.03.rows)
benalmadena.04.timePoints <- c(1:benalmadena.04.rows)

ggplot(benalmadena.pressure.01, aes(x=c(1:nrow(benalmadena.pressure.01)),y = atmosphericPressure)) + geom_line() 
ggplot(benalmadena.pressure.02, aes(x=c(1:nrow(benalmadena.pressure.02)),y = atmosphericPressure)) + geom_line() 
ggplot(benalmadena.pressure.03, aes(x=c(1:nrow(benalmadena.pressure.03)),y = atmosphericPressure)) + geom_line()
ggplot(benalmadena.pressure.04, aes(x=c(1:nrow(benalmadena.pressure.04)),y = atmosphericPressure)) + geom_line()

# Precipitation ---- 
benalmadena.precipitation <- read.csv(path.benalmadena.precipitation)
benalmadena.precipitation.01 <- benalmadena.precipitation[benalmadena.precipitation$entity_id=="weatherobserved-benalmadena-01",]
benalmadena.precipitation.02 <- benalmadena.precipitation[benalmadena.precipitation$entity_id=="weatherobserved-benalmadena-02",]
benalmadena.precipitation.03 <- benalmadena.precipitation[benalmadena.precipitation$entity_id=="weatherobserved-benalmadena-03",]
benalmadena.precipitation.04 <- benalmadena.precipitation[benalmadena.precipitation$entity_id=="weatherobserved-benalmadena-04",]

ggplot(benalmadena.precipitation.01, aes(x=c(1:nrow(benalmadena.precipitation.01)),y = precipitation)) + geom_line() 
ggplot(benalmadena.precipitation.02, aes(x=c(1:nrow(benalmadena.precipitation.02)),y = precipitation)) + geom_line() 
ggplot(benalmadena.precipitation.03, aes(x=c(1:nrow(benalmadena.precipitation.03)),y = precipitation)) + geom_line()
ggplot(benalmadena.precipitation.04, aes(x=c(1:nrow(benalmadena.precipitation.04)),y = precipitation)) + geom_line()

# Humidity ---- 
benalmadena.humidity <- read.csv(path.benalmadena.humidity)
benalmadena.humidity.01 <- benalmadena.humidity[benalmadena.humidity$entity_id=="weatherobserved-benalmadena-01",]
benalmadena.humidity.02 <- benalmadena.humidity[benalmadena.humidity$entity_id=="weatherobserved-benalmadena-02",]
benalmadena.humidity.03 <- benalmadena.humidity[benalmadena.humidity$entity_id=="weatherobserved-benalmadena-03",]
benalmadena.humidity.04 <- benalmadena.humidity[benalmadena.humidity$entity_id=="weatherobserved-benalmadena-04",]

ggplot(benalmadena.humidity.01, aes(x=c(1:nrow(benalmadena.humidity.01)),y = relativeHumidity)) + geom_line() 
ggplot(benalmadena.humidity.02, aes(x=c(1:nrow(benalmadena.humidity.02)),y = relativeHumidity)) + geom_line() 
ggplot(benalmadena.humidity.03, aes(x=c(1:nrow(benalmadena.humidity.03)),y = relativeHumidity)) + geom_line()
ggplot(benalmadena.humidity.04, aes(x=c(1:nrow(benalmadena.humidity.04)),y = relativeHumidity)) + geom_line()

# Radiation ---- 
benalmadena.radiation <- read.csv(path.benalmadena.radiation)
benalmadena.radiation.01 <- benalmadena.radiation[benalmadena.radiation$entity_id=="weatherobserved-benalmadena-01",]
benalmadena.radiation.02 <- benalmadena.radiation[benalmadena.radiation$entity_id=="weatherobserved-benalmadena-02",]
benalmadena.radiation.03 <- benalmadena.radiation[benalmadena.radiation$entity_id=="weatherobserved-benalmadena-03",]
benalmadena.radiation.04 <- benalmadena.radiation[benalmadena.radiation$entity_id=="weatherobserved-benalmadena-04",]

ggplot(benalmadena.radiation.01, aes(x=c(1:nrow(benalmadena.radiation.01)),y = solarRadiation)) + geom_line() 
ggplot(benalmadena.radiation.02, aes(x=c(1:nrow(benalmadena.radiation.02)),y = solarRadiation)) + geom_line() 
ggplot(benalmadena.radiation.03, aes(x=c(1:nrow(benalmadena.radiation.03)),y = solarRadiation)) + geom_line()
ggplot(benalmadena.radiation.04, aes(x=c(1:nrow(benalmadena.radiation.04)),y = solarRadiation)) + geom_line()

# Temperature ---- 
benalmadena.temperature <- read.csv(path.benalmadena.temperature)
benalmadena.temperature.01 <- benalmadena.temperature[benalmadena.temperature$entity_id=="weatherobserved-benalmadena-01",]
benalmadena.temperature.02 <- benalmadena.temperature[benalmadena.temperature$entity_id=="weatherobserved-benalmadena-02",]
benalmadena.temperature.03 <- benalmadena.temperature[benalmadena.temperature$entity_id=="weatherobserved-benalmadena-03",]
benalmadena.temperature.04 <- benalmadena.temperature[benalmadena.temperature$entity_id=="weatherobserved-benalmadena-04",]

ggplot(benalmadena.temperature.01, aes(x=c(1:nrow(benalmadena.temperature.01)),y = temperature)) + geom_line() 
ggplot(benalmadena.temperature.02, aes(x=c(1:nrow(benalmadena.temperature.02)),y = temperature)) + geom_line() 
ggplot(benalmadena.temperature.03, aes(x=c(1:nrow(benalmadena.temperature.03)),y = temperature)) + geom_line()
ggplot(benalmadena.temperature.04, aes(x=c(1:nrow(benalmadena.temperature.04)),y = temperature)) + geom_line()

# Direction ---- 
benalmadena.direction <- read.csv(path.benalmadena.direction)
benalmadena.direction.01 <- benalmadena.direction[benalmadena.direction$entity_id=="weatherobserved-benalmadena-01",]
benalmadena.direction.02 <- benalmadena.direction[benalmadena.direction$entity_id=="weatherobserved-benalmadena-02",]
benalmadena.direction.03 <- benalmadena.direction[benalmadena.direction$entity_id=="weatherobserved-benalmadena-03",]
benalmadena.direction.04 <- benalmadena.direction[benalmadena.direction$entity_id=="weatherobserved-benalmadena-04",]

ggplot(benalmadena.direction.01, aes(x=c(1:nrow(benalmadena.direction.01)),y = windDirection)) + geom_line() 
ggplot(benalmadena.direction.02, aes(x=c(1:nrow(benalmadena.direction.02)),y = windDirection)) + geom_line() 
ggplot(benalmadena.direction.03, aes(x=c(1:nrow(benalmadena.direction.03)),y = windDirection)) + geom_line()
ggplot(benalmadena.direction.04, aes(x=c(1:nrow(benalmadena.direction.04)),y = windDirection)) + geom_line()

# Speed ---- 
benalmadena.speed <- read.csv(path.benalmadena.speed)
benalmadena.speed.01 <- benalmadena.speed[benalmadena.speed$entity_id=="weatherobserved-benalmadena-01",]
benalmadena.speed.02 <- benalmadena.speed[benalmadena.speed$entity_id=="weatherobserved-benalmadena-02",]
benalmadena.speed.03 <- benalmadena.speed[benalmadena.speed$entity_id=="weatherobserved-benalmadena-03",]
benalmadena.speed.04 <- benalmadena.speed[benalmadena.speed$entity_id=="weatherobserved-benalmadena-04",]

ggplot(benalmadena.speed.01, aes(x=c(1:nrow(benalmadena.speed.01)),y = windSpeed)) + geom_line() 
ggplot(benalmadena.speed.02, aes(x=c(1:nrow(benalmadena.speed.02)),y = windSpeed)) + geom_line() 
ggplot(benalmadena.speed.03, aes(x=c(1:nrow(benalmadena.speed.03)),y = windSpeed)) + geom_line()
ggplot(benalmadena.speed.04, aes(x=c(1:nrow(benalmadena.speed.04)),y = windSpeed)) + geom_line()