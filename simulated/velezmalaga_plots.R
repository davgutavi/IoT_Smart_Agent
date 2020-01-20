source("simulated/paths.R")
require(ggplot2)

# Presure ---- 
velezmalaga.pressure <- read.csv(path.velezmalaga.pressure)
velezmalaga.pressure.01 <- velezmalaga.pressure[velezmalaga.pressure$entity_id=="weatherobserved-velezmalaga-01",]
velezmalaga.pressure.02 <- velezmalaga.pressure[velezmalaga.pressure$entity_id=="weatherobserved-velezmalaga-02",]
velezmalaga.pressure.03 <- velezmalaga.pressure[velezmalaga.pressure$entity_id=="weatherobserved-velezmalaga-03",]
velezmalaga.pressure.04 <- velezmalaga.pressure[velezmalaga.pressure$entity_id=="weatherobserved-velezmalaga-04",]
velezmalaga.pressure.05 <- velezmalaga.pressure[velezmalaga.pressure$entity_id=="weatherobserved-velezmalaga-05",]
velezmalaga.pressure.06 <- velezmalaga.pressure[velezmalaga.pressure$entity_id=="weatherobserved-velezmalaga-06",]

velezmalaga.01.rows <- nrow(velezmalaga.pressure.01)
velezmalaga.02.rows <- nrow(velezmalaga.pressure.02)
velezmalaga.03.rows <- nrow(velezmalaga.pressure.03)
velezmalaga.04.rows <- nrow(velezmalaga.pressure.04)
velezmalaga.05.rows <- nrow(velezmalaga.pressure.05)
velezmalaga.06.rows <- nrow(velezmalaga.pressure.06)
velezmalaga.01.timePoints <- c(1:velezmalaga.01.rows)
velezmalaga.02.timePoints <- c(1:velezmalaga.02.rows)
velezmalaga.03.timePoints <- c(1:velezmalaga.03.rows)
velezmalaga.04.timePoints <- c(1:velezmalaga.04.rows)
velezmalaga.05.timePoints <- c(1:velezmalaga.05.rows)
velezmalaga.06.timePoints <- c(1:velezmalaga.06.rows)

ggplot(velezmalaga.pressure.01, aes(x=c(1:nrow(velezmalaga.pressure.01)),y = atmosphericPressure)) + geom_line() 
ggplot(velezmalaga.pressure.02, aes(x=c(1:nrow(velezmalaga.pressure.02)),y = atmosphericPressure)) + geom_line() 
ggplot(velezmalaga.pressure.03, aes(x=c(1:nrow(velezmalaga.pressure.03)),y = atmosphericPressure)) + geom_line()
ggplot(velezmalaga.pressure.04, aes(x=c(1:nrow(velezmalaga.pressure.04)),y = atmosphericPressure)) + geom_line()
ggplot(velezmalaga.pressure.05, aes(x=c(1:nrow(velezmalaga.pressure.05)),y = atmosphericPressure)) + geom_line()
ggplot(velezmalaga.pressure.06, aes(x=c(1:nrow(velezmalaga.pressure.06)),y = atmosphericPressure)) + geom_line()

# Precipitation ---- 
velezmalaga.precipitation <- read.csv(path.velezmalaga.precipitation)
velezmalaga.precipitation.01 <- velezmalaga.precipitation[velezmalaga.precipitation$entity_id=="weatherobserved-velezmalaga-01",]
velezmalaga.precipitation.02 <- velezmalaga.precipitation[velezmalaga.precipitation$entity_id=="weatherobserved-velezmalaga-02",]
velezmalaga.precipitation.03 <- velezmalaga.precipitation[velezmalaga.precipitation$entity_id=="weatherobserved-velezmalaga-03",]
velezmalaga.precipitation.04 <- velezmalaga.precipitation[velezmalaga.precipitation$entity_id=="weatherobserved-velezmalaga-04",]
velezmalaga.precipitation.05 <- velezmalaga.precipitation[velezmalaga.precipitation$entity_id=="weatherobserved-velezmalaga-05",]
velezmalaga.precipitation.06 <- velezmalaga.precipitation[velezmalaga.precipitation$entity_id=="weatherobserved-velezmalaga-06",]

ggplot(velezmalaga.precipitation.01, aes(x=c(1:nrow(velezmalaga.precipitation.01)),y = precipitation)) + geom_line() 
ggplot(velezmalaga.precipitation.02, aes(x=c(1:nrow(velezmalaga.precipitation.02)),y = precipitation)) + geom_line() 
ggplot(velezmalaga.precipitation.03, aes(x=c(1:nrow(velezmalaga.precipitation.03)),y = precipitation)) + geom_line()
ggplot(velezmalaga.precipitation.04, aes(x=c(1:nrow(velezmalaga.precipitation.04)),y = precipitation)) + geom_line()
ggplot(velezmalaga.precipitation.05, aes(x=c(1:nrow(velezmalaga.precipitation.05)),y = precipitation)) + geom_line()
ggplot(velezmalaga.precipitation.06, aes(x=c(1:nrow(velezmalaga.precipitation.06)),y = precipitation)) + geom_line()

# Humidity ---- 
velezmalaga.humidity <- read.csv(path.velezmalaga.humidity)
velezmalaga.humidity.01 <- velezmalaga.humidity[velezmalaga.humidity$entity_id=="weatherobserved-velezmalaga-01",]
velezmalaga.humidity.02 <- velezmalaga.humidity[velezmalaga.humidity$entity_id=="weatherobserved-velezmalaga-02",]
velezmalaga.humidity.03 <- velezmalaga.humidity[velezmalaga.humidity$entity_id=="weatherobserved-velezmalaga-03",]
velezmalaga.humidity.04 <- velezmalaga.humidity[velezmalaga.humidity$entity_id=="weatherobserved-velezmalaga-04",]
velezmalaga.humidity.05 <- velezmalaga.humidity[velezmalaga.humidity$entity_id=="weatherobserved-velezmalaga-05",]
velezmalaga.humidity.06 <- velezmalaga.humidity[velezmalaga.humidity$entity_id=="weatherobserved-velezmalaga-06",]

ggplot(velezmalaga.humidity.01, aes(x=c(1:nrow(velezmalaga.humidity.01)),y = relativeHumidity)) + geom_line() 
ggplot(velezmalaga.humidity.02, aes(x=c(1:nrow(velezmalaga.humidity.02)),y = relativeHumidity)) + geom_line() 
ggplot(velezmalaga.humidity.03, aes(x=c(1:nrow(velezmalaga.humidity.03)),y = relativeHumidity)) + geom_line()
ggplot(velezmalaga.humidity.04, aes(x=c(1:nrow(velezmalaga.humidity.04)),y = relativeHumidity)) + geom_line()
ggplot(velezmalaga.humidity.05, aes(x=c(1:nrow(velezmalaga.humidity.05)),y = relativeHumidity)) + geom_line()
ggplot(velezmalaga.humidity.06, aes(x=c(1:nrow(velezmalaga.humidity.06)),y = relativeHumidity)) + geom_line()

# Radiation ---- 
velezmalaga.radiation <- read.csv(path.velezmalaga.radiation)
velezmalaga.radiation.01 <- velezmalaga.radiation[velezmalaga.radiation$entity_id=="weatherobserved-velezmalaga-01",]
velezmalaga.radiation.02 <- velezmalaga.radiation[velezmalaga.radiation$entity_id=="weatherobserved-velezmalaga-02",]
velezmalaga.radiation.03 <- velezmalaga.radiation[velezmalaga.radiation$entity_id=="weatherobserved-velezmalaga-03",]
velezmalaga.radiation.04 <- velezmalaga.radiation[velezmalaga.radiation$entity_id=="weatherobserved-velezmalaga-04",]
velezmalaga.radiation.05 <- velezmalaga.radiation[velezmalaga.radiation$entity_id=="weatherobserved-velezmalaga-05",]
velezmalaga.radiation.06 <- velezmalaga.radiation[velezmalaga.radiation$entity_id=="weatherobserved-velezmalaga-06",]

ggplot(velezmalaga.radiation.01, aes(x=c(1:nrow(velezmalaga.radiation.01)),y = solarRadiation)) + geom_line() 
ggplot(velezmalaga.radiation.02, aes(x=c(1:nrow(velezmalaga.radiation.02)),y = solarRadiation)) + geom_line() 
ggplot(velezmalaga.radiation.03, aes(x=c(1:nrow(velezmalaga.radiation.03)),y = solarRadiation)) + geom_line()
ggplot(velezmalaga.radiation.04, aes(x=c(1:nrow(velezmalaga.radiation.04)),y = solarRadiation)) + geom_line()
ggplot(velezmalaga.radiation.05, aes(x=c(1:nrow(velezmalaga.radiation.05)),y = solarRadiation)) + geom_line()
ggplot(velezmalaga.radiation.06, aes(x=c(1:nrow(velezmalaga.radiation.06)),y = solarRadiation)) + geom_line()

# Temperature ---- 
velezmalaga.temperature <- read.csv(path.velezmalaga.temperature)
velezmalaga.temperature.01 <- velezmalaga.temperature[velezmalaga.temperature$entity_id=="weatherobserved-velezmalaga-01",]
velezmalaga.temperature.02 <- velezmalaga.temperature[velezmalaga.temperature$entity_id=="weatherobserved-velezmalaga-02",]
velezmalaga.temperature.03 <- velezmalaga.temperature[velezmalaga.temperature$entity_id=="weatherobserved-velezmalaga-03",]
velezmalaga.temperature.04 <- velezmalaga.temperature[velezmalaga.temperature$entity_id=="weatherobserved-velezmalaga-04",]
velezmalaga.temperature.05 <- velezmalaga.temperature[velezmalaga.temperature$entity_id=="weatherobserved-velezmalaga-05",]
velezmalaga.temperature.06 <- velezmalaga.temperature[velezmalaga.temperature$entity_id=="weatherobserved-velezmalaga-06",]

ggplot(velezmalaga.temperature.01, aes(x=c(1:nrow(velezmalaga.temperature.01)),y = temperature)) + geom_line() 
ggplot(velezmalaga.temperature.02, aes(x=c(1:nrow(velezmalaga.temperature.02)),y = temperature)) + geom_line() 
ggplot(velezmalaga.temperature.03, aes(x=c(1:nrow(velezmalaga.temperature.03)),y = temperature)) + geom_line()
ggplot(velezmalaga.temperature.04, aes(x=c(1:nrow(velezmalaga.temperature.04)),y = temperature)) + geom_line()
ggplot(velezmalaga.temperature.05, aes(x=c(1:nrow(velezmalaga.temperature.05)),y = temperature)) + geom_line()
ggplot(velezmalaga.temperature.06, aes(x=c(1:nrow(velezmalaga.temperature.06)),y = temperature)) + geom_line()

# Direction ---- 
velezmalaga.direction <- read.csv(path.velezmalaga.direction)
velezmalaga.direction.01 <- velezmalaga.direction[velezmalaga.direction$entity_id=="weatherobserved-velezmalaga-01",]
velezmalaga.direction.02 <- velezmalaga.direction[velezmalaga.direction$entity_id=="weatherobserved-velezmalaga-02",]
velezmalaga.direction.03 <- velezmalaga.direction[velezmalaga.direction$entity_id=="weatherobserved-velezmalaga-03",]
velezmalaga.direction.04 <- velezmalaga.direction[velezmalaga.direction$entity_id=="weatherobserved-velezmalaga-04",]
velezmalaga.direction.05 <- velezmalaga.direction[velezmalaga.direction$entity_id=="weatherobserved-velezmalaga-05",]
velezmalaga.direction.06 <- velezmalaga.direction[velezmalaga.direction$entity_id=="weatherobserved-velezmalaga-06",]

ggplot(velezmalaga.direction.01, aes(x=c(1:nrow(velezmalaga.direction.01)),y = windDirection)) + geom_line() 
ggplot(velezmalaga.direction.02, aes(x=c(1:nrow(velezmalaga.direction.02)),y = windDirection)) + geom_line() 
ggplot(velezmalaga.direction.03, aes(x=c(1:nrow(velezmalaga.direction.03)),y = windDirection)) + geom_line()
ggplot(velezmalaga.direction.04, aes(x=c(1:nrow(velezmalaga.direction.04)),y = windDirection)) + geom_line()
ggplot(velezmalaga.direction.05, aes(x=c(1:nrow(velezmalaga.direction.05)),y = windDirection)) + geom_line()
ggplot(velezmalaga.direction.06, aes(x=c(1:nrow(velezmalaga.direction.06)),y = windDirection)) + geom_line()

# Speed ---- 
velezmalaga.speed <- read.csv(path.velezmalaga.speed)
velezmalaga.speed.01 <- velezmalaga.speed[velezmalaga.speed$entity_id=="weatherobserved-velezmalaga-01",]
velezmalaga.speed.02 <- velezmalaga.speed[velezmalaga.speed$entity_id=="weatherobserved-velezmalaga-02",]
velezmalaga.speed.03 <- velezmalaga.speed[velezmalaga.speed$entity_id=="weatherobserved-velezmalaga-03",]
velezmalaga.speed.04 <- velezmalaga.speed[velezmalaga.speed$entity_id=="weatherobserved-velezmalaga-04",]
velezmalaga.speed.05 <- velezmalaga.speed[velezmalaga.speed$entity_id=="weatherobserved-velezmalaga-05",]
velezmalaga.speed.06 <- velezmalaga.speed[velezmalaga.speed$entity_id=="weatherobserved-velezmalaga-06",]

ggplot(velezmalaga.speed.01, aes(x=c(1:nrow(velezmalaga.speed.01)),y = windSpeed)) + geom_line() 
ggplot(velezmalaga.speed.02, aes(x=c(1:nrow(velezmalaga.speed.02)),y = windSpeed)) + geom_line() 
ggplot(velezmalaga.speed.03, aes(x=c(1:nrow(velezmalaga.speed.03)),y = windSpeed)) + geom_line()
ggplot(velezmalaga.speed.04, aes(x=c(1:nrow(velezmalaga.speed.04)),y = windSpeed)) + geom_line()
ggplot(velezmalaga.speed.05, aes(x=c(1:nrow(velezmalaga.speed.05)),y = windSpeed)) + geom_line()
ggplot(velezmalaga.speed.06, aes(x=c(1:nrow(velezmalaga.speed.06)),y = windSpeed)) + geom_line()