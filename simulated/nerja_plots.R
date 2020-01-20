source("simulated/paths.R")
require(ggplot2)

# Presure ---- 
nerja.pressure <- read.csv(path.nerja.pressure)
nerja.pressure.01 <- nerja.pressure[nerja.pressure$entity_id=="weatherobserved-nerja-01",]
nerja.pressure.02 <- nerja.pressure[nerja.pressure$entity_id=="weatherobserved-nerja-02",]
nerja.pressure.03 <- nerja.pressure[nerja.pressure$entity_id=="weatherobserved-nerja-03",]
nerja.pressure.04 <- nerja.pressure[nerja.pressure$entity_id=="weatherobserved-nerja-04",]

nerja.01.rows <- nrow(nerja.pressure.01)
nerja.02.rows <- nrow(nerja.pressure.02)
nerja.03.rows <- nrow(nerja.pressure.03)
nerja.04.rows <- nrow(nerja.pressure.04)
nerja.01.timePoints <- c(1:nerja.01.rows)
nerja.02.timePoints <- c(1:nerja.02.rows)
nerja.03.timePoints <- c(1:nerja.03.rows)
nerja.04.timePoints <- c(1:nerja.04.rows)

ggplot(nerja.pressure.01, aes(x=c(1:nrow(nerja.pressure.01)),y = atmosphericPressure)) + geom_line() 
ggplot(nerja.pressure.02, aes(x=c(1:nrow(nerja.pressure.02)),y = atmosphericPressure)) + geom_line() 
ggplot(nerja.pressure.03, aes(x=c(1:nrow(nerja.pressure.03)),y = atmosphericPressure)) + geom_line()
ggplot(nerja.pressure.04, aes(x=c(1:nrow(nerja.pressure.04)),y = atmosphericPressure)) + geom_line()

# Precipitation ---- 
nerja.precipitation <- read.csv(path.nerja.precipitation)
nerja.precipitation.01 <- nerja.precipitation[nerja.precipitation$entity_id=="weatherobserved-nerja-01",]
nerja.precipitation.02 <- nerja.precipitation[nerja.precipitation$entity_id=="weatherobserved-nerja-02",]
nerja.precipitation.03 <- nerja.precipitation[nerja.precipitation$entity_id=="weatherobserved-nerja-03",]
nerja.precipitation.04 <- nerja.precipitation[nerja.precipitation$entity_id=="weatherobserved-nerja-04",]

ggplot(nerja.precipitation.01, aes(x=c(1:nrow(nerja.precipitation.01)),y = precipitation)) + geom_line() 
ggplot(nerja.precipitation.02, aes(x=c(1:nrow(nerja.precipitation.02)),y = precipitation)) + geom_line() 
ggplot(nerja.precipitation.03, aes(x=c(1:nrow(nerja.precipitation.03)),y = precipitation)) + geom_line()
ggplot(nerja.precipitation.04, aes(x=c(1:nrow(nerja.precipitation.04)),y = precipitation)) + geom_line()

# Humidity ---- 
nerja.humidity <- read.csv(path.nerja.humidity)
nerja.humidity.01 <- nerja.humidity[nerja.humidity$entity_id=="weatherobserved-nerja-01",]
nerja.humidity.02 <- nerja.humidity[nerja.humidity$entity_id=="weatherobserved-nerja-02",]
nerja.humidity.03 <- nerja.humidity[nerja.humidity$entity_id=="weatherobserved-nerja-03",]
nerja.humidity.04 <- nerja.humidity[nerja.humidity$entity_id=="weatherobserved-nerja-04",]

ggplot(nerja.humidity.01, aes(x=c(1:nrow(nerja.humidity.01)),y = relativeHumidity)) + geom_line() 
ggplot(nerja.humidity.02, aes(x=c(1:nrow(nerja.humidity.02)),y = relativeHumidity)) + geom_line() 
ggplot(nerja.humidity.03, aes(x=c(1:nrow(nerja.humidity.03)),y = relativeHumidity)) + geom_line()
ggplot(nerja.humidity.04, aes(x=c(1:nrow(nerja.humidity.04)),y = relativeHumidity)) + geom_line()

# Radiation ---- 
nerja.radiation <- read.csv(path.nerja.radiation)
nerja.radiation.01 <- nerja.radiation[nerja.radiation$entity_id=="weatherobserved-nerja-01",]
nerja.radiation.02 <- nerja.radiation[nerja.radiation$entity_id=="weatherobserved-nerja-02",]
nerja.radiation.03 <- nerja.radiation[nerja.radiation$entity_id=="weatherobserved-nerja-03",]
nerja.radiation.04 <- nerja.radiation[nerja.radiation$entity_id=="weatherobserved-nerja-04",]

ggplot(nerja.radiation.01, aes(x=c(1:nrow(nerja.radiation.01)),y = solarRadiation)) + geom_line() 
ggplot(nerja.radiation.02, aes(x=c(1:nrow(nerja.radiation.02)),y = solarRadiation)) + geom_line() 
ggplot(nerja.radiation.03, aes(x=c(1:nrow(nerja.radiation.03)),y = solarRadiation)) + geom_line()
ggplot(nerja.radiation.04, aes(x=c(1:nrow(nerja.radiation.04)),y = solarRadiation)) + geom_line()

# Temperature ---- 
nerja.temperature <- read.csv(path.nerja.temperature)
nerja.temperature.01 <- nerja.temperature[nerja.temperature$entity_id=="weatherobserved-nerja-01",]
nerja.temperature.02 <- nerja.temperature[nerja.temperature$entity_id=="weatherobserved-nerja-02",]
nerja.temperature.03 <- nerja.temperature[nerja.temperature$entity_id=="weatherobserved-nerja-03",]
nerja.temperature.04 <- nerja.temperature[nerja.temperature$entity_id=="weatherobserved-nerja-04",]

ggplot(nerja.temperature.01, aes(x=c(1:nrow(nerja.temperature.01)),y = temperature)) + geom_line() 
ggplot(nerja.temperature.02, aes(x=c(1:nrow(nerja.temperature.02)),y = temperature)) + geom_line() 
ggplot(nerja.temperature.03, aes(x=c(1:nrow(nerja.temperature.03)),y = temperature)) + geom_line()
ggplot(nerja.temperature.04, aes(x=c(1:nrow(nerja.temperature.04)),y = temperature)) + geom_line()

# Direction ---- 
nerja.direction <- read.csv(path.nerja.direction)
nerja.direction.01 <- nerja.direction[nerja.direction$entity_id=="weatherobserved-nerja-01",]
nerja.direction.02 <- nerja.direction[nerja.direction$entity_id=="weatherobserved-nerja-02",]
nerja.direction.03 <- nerja.direction[nerja.direction$entity_id=="weatherobserved-nerja-03",]
nerja.direction.04 <- nerja.direction[nerja.direction$entity_id=="weatherobserved-nerja-04",]

ggplot(nerja.direction.01, aes(x=c(1:nrow(nerja.direction.01)),y = windDirection)) + geom_line() 
ggplot(nerja.direction.02, aes(x=c(1:nrow(nerja.direction.02)),y = windDirection)) + geom_line() 
ggplot(nerja.direction.03, aes(x=c(1:nrow(nerja.direction.03)),y = windDirection)) + geom_line()
ggplot(nerja.direction.04, aes(x=c(1:nrow(nerja.direction.04)),y = windDirection)) + geom_line()

# Speed ---- 
nerja.speed <- read.csv(path.nerja.speed)
nerja.speed.01 <- nerja.speed[nerja.speed$entity_id=="weatherobserved-nerja-01",]
nerja.speed.02 <- nerja.speed[nerja.speed$entity_id=="weatherobserved-nerja-02",]
nerja.speed.03 <- nerja.speed[nerja.speed$entity_id=="weatherobserved-nerja-03",]
nerja.speed.04 <- nerja.speed[nerja.speed$entity_id=="weatherobserved-nerja-04",]

ggplot(nerja.speed.01, aes(x=c(1:nrow(nerja.speed.01)),y = windSpeed)) + geom_line() 
ggplot(nerja.speed.02, aes(x=c(1:nrow(nerja.speed.02)),y = windSpeed)) + geom_line() 
ggplot(nerja.speed.03, aes(x=c(1:nrow(nerja.speed.03)),y = windSpeed)) + geom_line()
ggplot(nerja.speed.04, aes(x=c(1:nrow(nerja.speed.04)),y = windSpeed)) + geom_line()