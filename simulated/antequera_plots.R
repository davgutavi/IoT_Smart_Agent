source("simulated/paths.R")
require(ggplot2)

# Presure ---- 
antequera.pressure <- read.csv(path.antequera.pressure)
antequera.pressure.01 <- antequera.pressure[antequera.pressure$entity_id=="weatherobserved-antequera-01",]
antequera.pressure.02 <- antequera.pressure[antequera.pressure$entity_id=="weatherobserved-antequera-02",]
antequera.pressure.03 <- antequera.pressure[antequera.pressure$entity_id=="weatherobserved-antequera-03",]
antequera.pressure.04 <- antequera.pressure[antequera.pressure$entity_id=="weatherobserved-antequera-04",]
antequera.pressure.05 <- antequera.pressure[antequera.pressure$entity_id=="weatherobserved-antequera-05",]
antequera.pressure.06 <- antequera.pressure[antequera.pressure$entity_id=="weatherobserved-antequera-06",]

antequera.01.rows <- nrow(antequera.pressure.01)
antequera.02.rows <- nrow(antequera.pressure.02)
antequera.03.rows <- nrow(antequera.pressure.03)
antequera.04.rows <- nrow(antequera.pressure.04)
antequera.05.rows <- nrow(antequera.pressure.05)
antequera.06.rows <- nrow(antequera.pressure.06)
antequera.01.timePoints <- c(1:antequera.01.rows)
antequera.02.timePoints <- c(1:antequera.02.rows)
antequera.03.timePoints <- c(1:antequera.03.rows)
antequera.04.timePoints <- c(1:antequera.04.rows)
antequera.05.timePoints <- c(1:antequera.05.rows)
antequera.06.timePoints <- c(1:antequera.06.rows)

ggplot(antequera.pressure.01, aes(x=c(1:nrow(antequera.pressure.01)),y = atmosphericPressure)) + geom_line() 
ggplot(antequera.pressure.02, aes(x=c(1:nrow(antequera.pressure.02)),y = atmosphericPressure)) + geom_line() 
ggplot(antequera.pressure.03, aes(x=c(1:nrow(antequera.pressure.03)),y = atmosphericPressure)) + geom_line()
ggplot(antequera.pressure.04, aes(x=c(1:nrow(antequera.pressure.04)),y = atmosphericPressure)) + geom_line()
ggplot(antequera.pressure.05, aes(x=c(1:nrow(antequera.pressure.05)),y = atmosphericPressure)) + geom_line()
ggplot(antequera.pressure.06, aes(x=c(1:nrow(antequera.pressure.06)),y = atmosphericPressure)) + geom_line()

# Precipitation ---- 
antequera.precipitation <- read.csv(path.antequera.precipitation)
antequera.precipitation.01 <- antequera.precipitation[antequera.precipitation$entity_id=="weatherobserved-antequera-01",]
antequera.precipitation.02 <- antequera.precipitation[antequera.precipitation$entity_id=="weatherobserved-antequera-02",]
antequera.precipitation.03 <- antequera.precipitation[antequera.precipitation$entity_id=="weatherobserved-antequera-03",]
antequera.precipitation.04 <- antequera.precipitation[antequera.precipitation$entity_id=="weatherobserved-antequera-04",]
antequera.precipitation.05 <- antequera.precipitation[antequera.precipitation$entity_id=="weatherobserved-antequera-05",]
antequera.precipitation.06 <- antequera.precipitation[antequera.precipitation$entity_id=="weatherobserved-antequera-06",]

ggplot(antequera.precipitation.01, aes(x=c(1:nrow(antequera.precipitation.01)),y = precipitation)) + geom_line() 
ggplot(antequera.precipitation.02, aes(x=c(1:nrow(antequera.precipitation.02)),y = precipitation)) + geom_line() 
ggplot(antequera.precipitation.03, aes(x=c(1:nrow(antequera.precipitation.03)),y = precipitation)) + geom_line()
ggplot(antequera.precipitation.04, aes(x=c(1:nrow(antequera.precipitation.04)),y = precipitation)) + geom_line()
ggplot(antequera.precipitation.05, aes(x=c(1:nrow(antequera.precipitation.05)),y = precipitation)) + geom_line()
ggplot(antequera.precipitation.06, aes(x=c(1:nrow(antequera.precipitation.06)),y = precipitation)) + geom_line()

# Humidity ---- 
antequera.humidity <- read.csv(path.antequera.humidity)
antequera.humidity.01 <- antequera.humidity[antequera.humidity$entity_id=="weatherobserved-antequera-01",]
antequera.humidity.02 <- antequera.humidity[antequera.humidity$entity_id=="weatherobserved-antequera-02",]
antequera.humidity.03 <- antequera.humidity[antequera.humidity$entity_id=="weatherobserved-antequera-03",]
antequera.humidity.04 <- antequera.humidity[antequera.humidity$entity_id=="weatherobserved-antequera-04",]
antequera.humidity.05 <- antequera.humidity[antequera.humidity$entity_id=="weatherobserved-antequera-05",]
antequera.humidity.06 <- antequera.humidity[antequera.humidity$entity_id=="weatherobserved-antequera-06",]

ggplot(antequera.humidity.01, aes(x=c(1:nrow(antequera.humidity.01)),y = relativeHumidity)) + geom_line() 
ggplot(antequera.humidity.02, aes(x=c(1:nrow(antequera.humidity.02)),y = relativeHumidity)) + geom_line() 
ggplot(antequera.humidity.03, aes(x=c(1:nrow(antequera.humidity.03)),y = relativeHumidity)) + geom_line()
ggplot(antequera.humidity.04, aes(x=c(1:nrow(antequera.humidity.04)),y = relativeHumidity)) + geom_line()
ggplot(antequera.humidity.05, aes(x=c(1:nrow(antequera.humidity.05)),y = relativeHumidity)) + geom_line()
ggplot(antequera.humidity.06, aes(x=c(1:nrow(antequera.humidity.06)),y = relativeHumidity)) + geom_line()

# Radiation ---- 
antequera.radiation <- read.csv(path.antequera.radiation)
antequera.radiation.01 <- antequera.radiation[antequera.radiation$entity_id=="weatherobserved-antequera-01",]
antequera.radiation.02 <- antequera.radiation[antequera.radiation$entity_id=="weatherobserved-antequera-02",]
antequera.radiation.03 <- antequera.radiation[antequera.radiation$entity_id=="weatherobserved-antequera-03",]
antequera.radiation.04 <- antequera.radiation[antequera.radiation$entity_id=="weatherobserved-antequera-04",]
antequera.radiation.05 <- antequera.radiation[antequera.radiation$entity_id=="weatherobserved-antequera-05",]
antequera.radiation.06 <- antequera.radiation[antequera.radiation$entity_id=="weatherobserved-antequera-06",]

ggplot(antequera.radiation.01, aes(x=c(1:nrow(antequera.radiation.01)),y = solarRadiation)) + geom_line() 
ggplot(antequera.radiation.02, aes(x=c(1:nrow(antequera.radiation.02)),y = solarRadiation)) + geom_line() 
ggplot(antequera.radiation.03, aes(x=c(1:nrow(antequera.radiation.03)),y = solarRadiation)) + geom_line()
ggplot(antequera.radiation.04, aes(x=c(1:nrow(antequera.radiation.04)),y = solarRadiation)) + geom_line()
ggplot(antequera.radiation.05, aes(x=c(1:nrow(antequera.radiation.05)),y = solarRadiation)) + geom_line()
ggplot(antequera.radiation.06, aes(x=c(1:nrow(antequera.radiation.06)),y = solarRadiation)) + geom_line()

# Temperature ---- 
antequera.temperature <- read.csv(path.antequera.temperature)
antequera.temperature.01 <- antequera.temperature[antequera.temperature$entity_id=="weatherobserved-antequera-01",]
antequera.temperature.02 <- antequera.temperature[antequera.temperature$entity_id=="weatherobserved-antequera-02",]
antequera.temperature.03 <- antequera.temperature[antequera.temperature$entity_id=="weatherobserved-antequera-03",]
antequera.temperature.04 <- antequera.temperature[antequera.temperature$entity_id=="weatherobserved-antequera-04",]
antequera.temperature.05 <- antequera.temperature[antequera.temperature$entity_id=="weatherobserved-antequera-05",]
antequera.temperature.06 <- antequera.temperature[antequera.temperature$entity_id=="weatherobserved-antequera-06",]

ggplot(antequera.temperature.01, aes(x=c(1:nrow(antequera.temperature.01)),y = temperature)) + geom_line() 
ggplot(antequera.temperature.02, aes(x=c(1:nrow(antequera.temperature.02)),y = temperature)) + geom_line() 
ggplot(antequera.temperature.03, aes(x=c(1:nrow(antequera.temperature.03)),y = temperature)) + geom_line()
ggplot(antequera.temperature.04, aes(x=c(1:nrow(antequera.temperature.04)),y = temperature)) + geom_line()
ggplot(antequera.temperature.05, aes(x=c(1:nrow(antequera.temperature.05)),y = temperature)) + geom_line()
ggplot(antequera.temperature.06, aes(x=c(1:nrow(antequera.temperature.06)),y = temperature)) + geom_line()

# Direction ---- 
antequera.direction <- read.csv(path.antequera.direction)
antequera.direction.01 <- antequera.direction[antequera.direction$entity_id=="weatherobserved-antequera-01",]
antequera.direction.02 <- antequera.direction[antequera.direction$entity_id=="weatherobserved-antequera-02",]
antequera.direction.03 <- antequera.direction[antequera.direction$entity_id=="weatherobserved-antequera-03",]
antequera.direction.04 <- antequera.direction[antequera.direction$entity_id=="weatherobserved-antequera-04",]
antequera.direction.05 <- antequera.direction[antequera.direction$entity_id=="weatherobserved-antequera-05",]
antequera.direction.06 <- antequera.direction[antequera.direction$entity_id=="weatherobserved-antequera-06",]

ggplot(antequera.direction.01, aes(x=c(1:nrow(antequera.direction.01)),y = windDirection)) + geom_line() 
ggplot(antequera.direction.02, aes(x=c(1:nrow(antequera.direction.02)),y = windDirection)) + geom_line() 
ggplot(antequera.direction.03, aes(x=c(1:nrow(antequera.direction.03)),y = windDirection)) + geom_line()
ggplot(antequera.direction.04, aes(x=c(1:nrow(antequera.direction.04)),y = windDirection)) + geom_line()
ggplot(antequera.direction.05, aes(x=c(1:nrow(antequera.direction.05)),y = windDirection)) + geom_line()
ggplot(antequera.direction.06, aes(x=c(1:nrow(antequera.direction.06)),y = windDirection)) + geom_line()

# Speed ---- 
antequera.speed <- read.csv(path.antequera.speed)
antequera.speed.01 <- antequera.speed[antequera.speed$entity_id=="weatherobserved-antequera-01",]
antequera.speed.02 <- antequera.speed[antequera.speed$entity_id=="weatherobserved-antequera-02",]
antequera.speed.03 <- antequera.speed[antequera.speed$entity_id=="weatherobserved-antequera-03",]
antequera.speed.04 <- antequera.speed[antequera.speed$entity_id=="weatherobserved-antequera-04",]
antequera.speed.05 <- antequera.speed[antequera.speed$entity_id=="weatherobserved-antequera-05",]
antequera.speed.06 <- antequera.speed[antequera.speed$entity_id=="weatherobserved-antequera-06",]

ggplot(antequera.speed.01, aes(x=c(1:nrow(antequera.speed.01)),y = windSpeed)) + geom_line() 
ggplot(antequera.speed.02, aes(x=c(1:nrow(antequera.speed.02)),y = windSpeed)) + geom_line() 
ggplot(antequera.speed.03, aes(x=c(1:nrow(antequera.speed.03)),y = windSpeed)) + geom_line()
ggplot(antequera.speed.04, aes(x=c(1:nrow(antequera.speed.04)),y = windSpeed)) + geom_line()
ggplot(antequera.speed.05, aes(x=c(1:nrow(antequera.speed.05)),y = windSpeed)) + geom_line()
ggplot(antequera.speed.06, aes(x=c(1:nrow(antequera.speed.06)),y = windSpeed)) + geom_line()