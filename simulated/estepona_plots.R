source("simulated/paths.R")
require(ggplot2)

# Presure ---- 
estepona.pressure <- read.csv(path.estepona.pressure)
estepona.pressure.01 <- estepona.pressure[estepona.pressure$entity_id=="weatherobserved-estepona-01",]
estepona.pressure.02 <- estepona.pressure[estepona.pressure$entity_id=="weatherobserved-estepona-02",]
estepona.pressure.03 <- estepona.pressure[estepona.pressure$entity_id=="weatherobserved-estepona-03",]
estepona.pressure.04 <- estepona.pressure[estepona.pressure$entity_id=="weatherobserved-estepona-04",]

estepona.01.rows <- nrow(estepona.pressure.01)
estepona.02.rows <- nrow(estepona.pressure.02)
estepona.03.rows <- nrow(estepona.pressure.03)
estepona.04.rows <- nrow(estepona.pressure.04)
estepona.01.timePoints <- c(1:estepona.01.rows)
estepona.02.timePoints <- c(1:estepona.02.rows)
estepona.03.timePoints <- c(1:estepona.03.rows)
estepona.04.timePoints <- c(1:estepona.04.rows)

ggplot(estepona.pressure.01, aes(x=c(1:nrow(estepona.pressure.01)),y = atmosphericPressure)) + geom_line() 
ggplot(estepona.pressure.02, aes(x=c(1:nrow(estepona.pressure.02)),y = atmosphericPressure)) + geom_line() 
ggplot(estepona.pressure.03, aes(x=c(1:nrow(estepona.pressure.03)),y = atmosphericPressure)) + geom_line()
ggplot(estepona.pressure.04, aes(x=c(1:nrow(estepona.pressure.04)),y = atmosphericPressure)) + geom_line()

# Precipitation ---- 
estepona.precipitation <- read.csv(path.estepona.precipitation)
estepona.precipitation.01 <- estepona.precipitation[estepona.precipitation$entity_id=="weatherobserved-estepona-01",]
estepona.precipitation.02 <- estepona.precipitation[estepona.precipitation$entity_id=="weatherobserved-estepona-02",]
estepona.precipitation.03 <- estepona.precipitation[estepona.precipitation$entity_id=="weatherobserved-estepona-03",]
estepona.precipitation.04 <- estepona.precipitation[estepona.precipitation$entity_id=="weatherobserved-estepona-04",]

ggplot(estepona.precipitation.01, aes(x=c(1:nrow(estepona.precipitation.01)),y = precipitation)) + geom_line() 
ggplot(estepona.precipitation.02, aes(x=c(1:nrow(estepona.precipitation.02)),y = precipitation)) + geom_line() 
ggplot(estepona.precipitation.03, aes(x=c(1:nrow(estepona.precipitation.03)),y = precipitation)) + geom_line()
ggplot(estepona.precipitation.04, aes(x=c(1:nrow(estepona.precipitation.04)),y = precipitation)) + geom_line()

# Humidity ---- 
estepona.humidity <- read.csv(path.estepona.humidity)
estepona.humidity.01 <- estepona.humidity[estepona.humidity$entity_id=="weatherobserved-estepona-01",]
estepona.humidity.02 <- estepona.humidity[estepona.humidity$entity_id=="weatherobserved-estepona-02",]
estepona.humidity.03 <- estepona.humidity[estepona.humidity$entity_id=="weatherobserved-estepona-03",]
estepona.humidity.04 <- estepona.humidity[estepona.humidity$entity_id=="weatherobserved-estepona-04",]

ggplot(estepona.humidity.01, aes(x=c(1:nrow(estepona.humidity.01)),y = relativeHumidity)) + geom_line() 
ggplot(estepona.humidity.02, aes(x=c(1:nrow(estepona.humidity.02)),y = relativeHumidity)) + geom_line() 
ggplot(estepona.humidity.03, aes(x=c(1:nrow(estepona.humidity.03)),y = relativeHumidity)) + geom_line()
ggplot(estepona.humidity.04, aes(x=c(1:nrow(estepona.humidity.04)),y = relativeHumidity)) + geom_line()

# Radiation ---- 
estepona.radiation <- read.csv(path.estepona.radiation)
estepona.radiation.01 <- estepona.radiation[estepona.radiation$entity_id=="weatherobserved-estepona-01",]
estepona.radiation.02 <- estepona.radiation[estepona.radiation$entity_id=="weatherobserved-estepona-02",]
estepona.radiation.03 <- estepona.radiation[estepona.radiation$entity_id=="weatherobserved-estepona-03",]
estepona.radiation.04 <- estepona.radiation[estepona.radiation$entity_id=="weatherobserved-estepona-04",]

ggplot(estepona.radiation.01, aes(x=c(1:nrow(estepona.radiation.01)),y = solarRadiation)) + geom_line() 
ggplot(estepona.radiation.02, aes(x=c(1:nrow(estepona.radiation.02)),y = solarRadiation)) + geom_line() 
ggplot(estepona.radiation.03, aes(x=c(1:nrow(estepona.radiation.03)),y = solarRadiation)) + geom_line()
ggplot(estepona.radiation.04, aes(x=c(1:nrow(estepona.radiation.04)),y = solarRadiation)) + geom_line()

# Temperature ---- 
estepona.temperature <- read.csv(path.estepona.temperature)
estepona.temperature.01 <- estepona.temperature[estepona.temperature$entity_id=="weatherobserved-estepona-01",]
estepona.temperature.02 <- estepona.temperature[estepona.temperature$entity_id=="weatherobserved-estepona-02",]
estepona.temperature.03 <- estepona.temperature[estepona.temperature$entity_id=="weatherobserved-estepona-03",]
estepona.temperature.04 <- estepona.temperature[estepona.temperature$entity_id=="weatherobserved-estepona-04",]

ggplot(estepona.temperature.01, aes(x=c(1:nrow(estepona.temperature.01)),y = temperature)) + geom_line() 
ggplot(estepona.temperature.02, aes(x=c(1:nrow(estepona.temperature.02)),y = temperature)) + geom_line() 
ggplot(estepona.temperature.03, aes(x=c(1:nrow(estepona.temperature.03)),y = temperature)) + geom_line()
ggplot(estepona.temperature.04, aes(x=c(1:nrow(estepona.temperature.04)),y = temperature)) + geom_line()

# Direction ---- 
estepona.direction <- read.csv(path.estepona.direction)
estepona.direction.01 <- estepona.direction[estepona.direction$entity_id=="weatherobserved-estepona-01",]
estepona.direction.02 <- estepona.direction[estepona.direction$entity_id=="weatherobserved-estepona-02",]
estepona.direction.03 <- estepona.direction[estepona.direction$entity_id=="weatherobserved-estepona-03",]
estepona.direction.04 <- estepona.direction[estepona.direction$entity_id=="weatherobserved-estepona-04",]

ggplot(estepona.direction.01, aes(x=c(1:nrow(estepona.direction.01)),y = windDirection)) + geom_line() 
ggplot(estepona.direction.02, aes(x=c(1:nrow(estepona.direction.02)),y = windDirection)) + geom_line() 
ggplot(estepona.direction.03, aes(x=c(1:nrow(estepona.direction.03)),y = windDirection)) + geom_line()
ggplot(estepona.direction.04, aes(x=c(1:nrow(estepona.direction.04)),y = windDirection)) + geom_line()

# Speed ---- 
estepona.speed <- read.csv(path.estepona.speed)
estepona.speed.01 <- estepona.speed[estepona.speed$entity_id=="weatherobserved-estepona-01",]
estepona.speed.02 <- estepona.speed[estepona.speed$entity_id=="weatherobserved-estepona-02",]
estepona.speed.03 <- estepona.speed[estepona.speed$entity_id=="weatherobserved-estepona-03",]
estepona.speed.04 <- estepona.speed[estepona.speed$entity_id=="weatherobserved-estepona-04",]

ggplot(estepona.speed.01, aes(x=c(1:nrow(estepona.speed.01)),y = windSpeed)) + geom_line() 
ggplot(estepona.speed.02, aes(x=c(1:nrow(estepona.speed.02)),y = windSpeed)) + geom_line() 
ggplot(estepona.speed.03, aes(x=c(1:nrow(estepona.speed.03)),y = windSpeed)) + geom_line()
ggplot(estepona.speed.04, aes(x=c(1:nrow(estepona.speed.04)),y = windSpeed)) + geom_line()