source("simulated/paths.R")
require(ggplot2)

# Presure ---- 
malaga.pressure <- read.csv(path.malaga.pressure)
malaga.pressure.01 <- malaga.pressure[malaga.pressure$entity_id=="weatherobserved-malaga-01",]
malaga.pressure.02 <- malaga.pressure[malaga.pressure$entity_id=="weatherobserved-malaga-02",]
malaga.pressure.03 <- malaga.pressure[malaga.pressure$entity_id=="weatherobserved-malaga-03",]
malaga.pressure.04 <- malaga.pressure[malaga.pressure$entity_id=="weatherobserved-malaga-04",]
malaga.pressure.05 <- malaga.pressure[malaga.pressure$entity_id=="weatherobserved-malaga-05",]
malaga.pressure.06 <- malaga.pressure[malaga.pressure$entity_id=="weatherobserved-malaga-06",]
malaga.pressure.07 <- malaga.pressure[malaga.pressure$entity_id=="weatherobserved-malaga-07",]
malaga.pressure.08 <- malaga.pressure[malaga.pressure$entity_id=="weatherobserved-malaga-08",]
malaga.pressure.09 <- malaga.pressure[malaga.pressure$entity_id=="weatherobserved-malaga-09",]
malaga.pressure.10 <- malaga.pressure[malaga.pressure$entity_id=="weatherobserved-malaga-10",]

malaga.01.rows <- nrow(malaga.pressure.01)
malaga.02.rows <- nrow(malaga.pressure.02)
malaga.03.rows <- nrow(malaga.pressure.03)
malaga.04.rows <- nrow(malaga.pressure.04)
malaga.05.rows <- nrow(malaga.pressure.05)
malaga.06.rows <- nrow(malaga.pressure.06)
malaga.07.rows <- nrow(malaga.pressure.07)
malaga.08.rows <- nrow(malaga.pressure.08)
malaga.09.rows <- nrow(malaga.pressure.09)
malaga.10.rows <- nrow(malaga.pressure.10)
malaga.01.timePoints <- c(1:malaga.01.rows)
malaga.02.timePoints <- c(1:malaga.02.rows)
malaga.03.timePoints <- c(1:malaga.03.rows)
malaga.04.timePoints <- c(1:malaga.04.rows)
malaga.05.timePoints <- c(1:malaga.05.rows)
malaga.06.timePoints <- c(1:malaga.06.rows)
malaga.07.timePoints <- c(1:malaga.07.rows)
malaga.08.timePoints <- c(1:malaga.08.rows)
malaga.09.timePoints <- c(1:malaga.09.rows)
malaga.10.timePoints <- c(1:malaga.10.rows)


ggplot(malaga.pressure.01, aes(x=c(1:nrow(malaga.pressure.01)),y = atmosphericPressure)) + geom_line() 
ggplot(malaga.pressure.02, aes(x=c(1:nrow(malaga.pressure.02)),y = atmosphericPressure)) + geom_line() 
ggplot(malaga.pressure.03, aes(x=c(1:nrow(malaga.pressure.03)),y = atmosphericPressure)) + geom_line()
ggplot(malaga.pressure.04, aes(x=c(1:nrow(malaga.pressure.04)),y = atmosphericPressure)) + geom_line()
ggplot(malaga.pressure.05, aes(x=c(1:nrow(malaga.pressure.05)),y = atmosphericPressure)) + geom_line()
ggplot(malaga.pressure.06, aes(x=c(1:nrow(malaga.pressure.06)),y = atmosphericPressure)) + geom_line()
ggplot(malaga.pressure.07, aes(x=c(1:nrow(malaga.pressure.07)),y = atmosphericPressure)) + geom_line()
ggplot(malaga.pressure.08, aes(x=c(1:nrow(malaga.pressure.08)),y = atmosphericPressure)) + geom_line()
ggplot(malaga.pressure.09, aes(x=c(1:nrow(malaga.pressure.09)),y = atmosphericPressure)) + geom_line()
ggplot(malaga.pressure.10, aes(x=c(1:nrow(malaga.pressure.10)),y = atmosphericPressure)) + geom_line()

# Precipitation ---- 
malaga.precipitation <- read.csv(path.malaga.precipitation)
malaga.precipitation.01 <- malaga.precipitation[malaga.precipitation$entity_id=="weatherobserved-malaga-01",]
malaga.precipitation.02 <- malaga.precipitation[malaga.precipitation$entity_id=="weatherobserved-malaga-02",]
malaga.precipitation.03 <- malaga.precipitation[malaga.precipitation$entity_id=="weatherobserved-malaga-03",]
malaga.precipitation.04 <- malaga.precipitation[malaga.precipitation$entity_id=="weatherobserved-malaga-04",]
malaga.precipitation.05 <- malaga.precipitation[malaga.precipitation$entity_id=="weatherobserved-malaga-05",]
malaga.precipitation.06 <- malaga.precipitation[malaga.precipitation$entity_id=="weatherobserved-malaga-06",]
malaga.precipitation.07 <- malaga.precipitation[malaga.precipitation$entity_id=="weatherobserved-malaga-07",]
malaga.precipitation.08 <- malaga.precipitation[malaga.precipitation$entity_id=="weatherobserved-malaga-08",]
malaga.precipitation.09 <- malaga.precipitation[malaga.precipitation$entity_id=="weatherobserved-malaga-09",]
malaga.precipitation.10 <- malaga.precipitation[malaga.precipitation$entity_id=="weatherobserved-malaga-10",]

ggplot(malaga.precipitation.01, aes(x=c(1:nrow(malaga.precipitation.01)),y = precipitation)) + geom_line() 
ggplot(malaga.precipitation.02, aes(x=c(1:nrow(malaga.precipitation.02)),y = precipitation)) + geom_line() 
ggplot(malaga.precipitation.03, aes(x=c(1:nrow(malaga.precipitation.03)),y = precipitation)) + geom_line()
ggplot(malaga.precipitation.04, aes(x=c(1:nrow(malaga.precipitation.04)),y = precipitation)) + geom_line()
ggplot(malaga.precipitation.05, aes(x=c(1:nrow(malaga.precipitation.05)),y = precipitation)) + geom_line()
ggplot(malaga.precipitation.06, aes(x=c(1:nrow(malaga.precipitation.06)),y = precipitation)) + geom_line()
ggplot(malaga.precipitation.07, aes(x=c(1:nrow(malaga.precipitation.07)),y = precipitation)) + geom_line()
ggplot(malaga.precipitation.08, aes(x=c(1:nrow(malaga.precipitation.08)),y = precipitation)) + geom_line()
ggplot(malaga.precipitation.09, aes(x=c(1:nrow(malaga.precipitation.09)),y = precipitation)) + geom_line()
ggplot(malaga.precipitation.10, aes(x=c(1:nrow(malaga.precipitation.10)),y = precipitation)) + geom_line()

# Humidity ---- 
malaga.humidity <- read.csv(path.malaga.humidity)
malaga.humidity.01 <- malaga.humidity[malaga.humidity$entity_id=="weatherobserved-malaga-01",]
malaga.humidity.02 <- malaga.humidity[malaga.humidity$entity_id=="weatherobserved-malaga-02",]
malaga.humidity.03 <- malaga.humidity[malaga.humidity$entity_id=="weatherobserved-malaga-03",]
malaga.humidity.04 <- malaga.humidity[malaga.humidity$entity_id=="weatherobserved-malaga-04",]
malaga.humidity.05 <- malaga.humidity[malaga.humidity$entity_id=="weatherobserved-malaga-05",]
malaga.humidity.06 <- malaga.humidity[malaga.humidity$entity_id=="weatherobserved-malaga-06",]
malaga.humidity.07 <- malaga.humidity[malaga.humidity$entity_id=="weatherobserved-malaga-07",]
malaga.humidity.08 <- malaga.humidity[malaga.humidity$entity_id=="weatherobserved-malaga-08",]
malaga.humidity.09 <- malaga.humidity[malaga.humidity$entity_id=="weatherobserved-malaga-09",]
malaga.humidity.10 <- malaga.humidity[malaga.humidity$entity_id=="weatherobserved-malaga-10",]

ggplot(malaga.humidity.01, aes(x=c(1:nrow(malaga.humidity.01)),y = relativeHumidity)) + geom_line() 
ggplot(malaga.humidity.02, aes(x=c(1:nrow(malaga.humidity.02)),y = relativeHumidity)) + geom_line() 
ggplot(malaga.humidity.03, aes(x=c(1:nrow(malaga.humidity.03)),y = relativeHumidity)) + geom_line()
ggplot(malaga.humidity.04, aes(x=c(1:nrow(malaga.humidity.04)),y = relativeHumidity)) + geom_line()
ggplot(malaga.humidity.05, aes(x=c(1:nrow(malaga.humidity.05)),y = relativeHumidity)) + geom_line()
ggplot(malaga.humidity.06, aes(x=c(1:nrow(malaga.humidity.06)),y = relativeHumidity)) + geom_line()
ggplot(malaga.humidity.07, aes(x=c(1:nrow(malaga.humidity.07)),y = relativeHumidity)) + geom_line()
ggplot(malaga.humidity.08, aes(x=c(1:nrow(malaga.humidity.08)),y = relativeHumidity)) + geom_line()
ggplot(malaga.humidity.09, aes(x=c(1:nrow(malaga.humidity.09)),y = relativeHumidity)) + geom_line()
ggplot(malaga.humidity.10, aes(x=c(1:nrow(malaga.humidity.10)),y = relativeHumidity)) + geom_line()

# Radiation ---- 
malaga.radiation <- read.csv(path.malaga.radiation)
malaga.radiation.01 <- malaga.radiation[malaga.radiation$entity_id=="weatherobserved-malaga-01",]
malaga.radiation.02 <- malaga.radiation[malaga.radiation$entity_id=="weatherobserved-malaga-02",]
malaga.radiation.03 <- malaga.radiation[malaga.radiation$entity_id=="weatherobserved-malaga-03",]
malaga.radiation.04 <- malaga.radiation[malaga.radiation$entity_id=="weatherobserved-malaga-04",]
malaga.radiation.05 <- malaga.radiation[malaga.radiation$entity_id=="weatherobserved-malaga-05",]
malaga.radiation.06 <- malaga.radiation[malaga.radiation$entity_id=="weatherobserved-malaga-06",]
malaga.radiation.07 <- malaga.radiation[malaga.radiation$entity_id=="weatherobserved-malaga-07",]
malaga.radiation.08 <- malaga.radiation[malaga.radiation$entity_id=="weatherobserved-malaga-08",]
malaga.radiation.09 <- malaga.radiation[malaga.radiation$entity_id=="weatherobserved-malaga-09",]
malaga.radiation.10 <- malaga.radiation[malaga.radiation$entity_id=="weatherobserved-malaga-10",]

ggplot(malaga.radiation.01, aes(x=c(1:nrow(malaga.radiation.01)),y = solarRadiation)) + geom_line() 
ggplot(malaga.radiation.02, aes(x=c(1:nrow(malaga.radiation.02)),y = solarRadiation)) + geom_line() 
ggplot(malaga.radiation.03, aes(x=c(1:nrow(malaga.radiation.03)),y = solarRadiation)) + geom_line()
ggplot(malaga.radiation.04, aes(x=c(1:nrow(malaga.radiation.04)),y = solarRadiation)) + geom_line()
ggplot(malaga.radiation.05, aes(x=c(1:nrow(malaga.radiation.05)),y = solarRadiation)) + geom_line()
ggplot(malaga.radiation.06, aes(x=c(1:nrow(malaga.radiation.06)),y = solarRadiation)) + geom_line()
ggplot(malaga.radiation.07, aes(x=c(1:nrow(malaga.radiation.07)),y = solarRadiation)) + geom_line()
ggplot(malaga.radiation.08, aes(x=c(1:nrow(malaga.radiation.08)),y = solarRadiation)) + geom_line()
ggplot(malaga.radiation.09, aes(x=c(1:nrow(malaga.radiation.09)),y = solarRadiation)) + geom_line()
ggplot(malaga.radiation.10, aes(x=c(1:nrow(malaga.radiation.10)),y = solarRadiation)) + geom_line()

# Temperature ---- 
malaga.temperature <- read.csv(path.malaga.temperature)
malaga.temperature.01 <- malaga.temperature[malaga.temperature$entity_id=="weatherobserved-malaga-01",]
malaga.temperature.02 <- malaga.temperature[malaga.temperature$entity_id=="weatherobserved-malaga-02",]
malaga.temperature.03 <- malaga.temperature[malaga.temperature$entity_id=="weatherobserved-malaga-03",]
malaga.temperature.04 <- malaga.temperature[malaga.temperature$entity_id=="weatherobserved-malaga-04",]
malaga.temperature.05 <- malaga.temperature[malaga.temperature$entity_id=="weatherobserved-malaga-05",]
malaga.temperature.06 <- malaga.temperature[malaga.temperature$entity_id=="weatherobserved-malaga-06",]
malaga.temperature.07 <- malaga.temperature[malaga.temperature$entity_id=="weatherobserved-malaga-07",]
malaga.temperature.08 <- malaga.temperature[malaga.temperature$entity_id=="weatherobserved-malaga-08",]
malaga.temperature.09 <- malaga.temperature[malaga.temperature$entity_id=="weatherobserved-malaga-09",]
malaga.temperature.10 <- malaga.temperature[malaga.temperature$entity_id=="weatherobserved-malaga-10",]

ggplot(malaga.temperature.01, aes(x=c(1:nrow(malaga.temperature.01)),y = temperature)) + geom_line() 
ggplot(malaga.temperature.02, aes(x=c(1:nrow(malaga.temperature.02)),y = temperature)) + geom_line() 
ggplot(malaga.temperature.03, aes(x=c(1:nrow(malaga.temperature.03)),y = temperature)) + geom_line()
ggplot(malaga.temperature.04, aes(x=c(1:nrow(malaga.temperature.04)),y = temperature)) + geom_line()
ggplot(malaga.temperature.05, aes(x=c(1:nrow(malaga.temperature.05)),y = temperature)) + geom_line()
ggplot(malaga.temperature.06, aes(x=c(1:nrow(malaga.temperature.06)),y = temperature)) + geom_line()
ggplot(malaga.temperature.07, aes(x=c(1:nrow(malaga.temperature.07)),y = temperature)) + geom_line()
ggplot(malaga.temperature.08, aes(x=c(1:nrow(malaga.temperature.08)),y = temperature)) + geom_line()
ggplot(malaga.temperature.09, aes(x=c(1:nrow(malaga.temperature.09)),y = temperature)) + geom_line()
ggplot(malaga.temperature.10, aes(x=c(1:nrow(malaga.temperature.10)),y = temperature)) + geom_line()

# Direction ---- 
malaga.direction <- read.csv(path.malaga.direction)
malaga.direction.01 <- malaga.direction[malaga.direction$entity_id=="weatherobserved-malaga-01",]
malaga.direction.02 <- malaga.direction[malaga.direction$entity_id=="weatherobserved-malaga-02",]
malaga.direction.03 <- malaga.direction[malaga.direction$entity_id=="weatherobserved-malaga-03",]
malaga.direction.04 <- malaga.direction[malaga.direction$entity_id=="weatherobserved-malaga-04",]
malaga.direction.05 <- malaga.direction[malaga.direction$entity_id=="weatherobserved-malaga-05",]
malaga.direction.06 <- malaga.direction[malaga.direction$entity_id=="weatherobserved-malaga-06",]
malaga.direction.07 <- malaga.direction[malaga.direction$entity_id=="weatherobserved-malaga-07",]
malaga.direction.08 <- malaga.direction[malaga.direction$entity_id=="weatherobserved-malaga-08",]
malaga.direction.09 <- malaga.direction[malaga.direction$entity_id=="weatherobserved-malaga-09",]
malaga.direction.10 <- malaga.direction[malaga.direction$entity_id=="weatherobserved-malaga-10",]

ggplot(malaga.direction.01, aes(x=c(1:nrow(malaga.direction.01)),y = windDirection)) + geom_line() 
ggplot(malaga.direction.02, aes(x=c(1:nrow(malaga.direction.02)),y = windDirection)) + geom_line() 
ggplot(malaga.direction.03, aes(x=c(1:nrow(malaga.direction.03)),y = windDirection)) + geom_line()
ggplot(malaga.direction.04, aes(x=c(1:nrow(malaga.direction.04)),y = windDirection)) + geom_line()
ggplot(malaga.direction.05, aes(x=c(1:nrow(malaga.direction.05)),y = windDirection)) + geom_line()
ggplot(malaga.direction.06, aes(x=c(1:nrow(malaga.direction.06)),y = windDirection)) + geom_line()
ggplot(malaga.direction.07, aes(x=c(1:nrow(malaga.direction.07)),y = windDirection)) + geom_line()
ggplot(malaga.direction.08, aes(x=c(1:nrow(malaga.direction.08)),y = windDirection)) + geom_line()
ggplot(malaga.direction.09, aes(x=c(1:nrow(malaga.direction.09)),y = windDirection)) + geom_line()
ggplot(malaga.direction.10, aes(x=c(1:nrow(malaga.direction.10)),y = windDirection)) + geom_line()

# Speed ---- 
malaga.speed <- read.csv(path.malaga.speed)
malaga.speed.01 <- malaga.speed[malaga.speed$entity_id=="weatherobserved-malaga-01",]
malaga.speed.02 <- malaga.speed[malaga.speed$entity_id=="weatherobserved-malaga-02",]
malaga.speed.03 <- malaga.speed[malaga.speed$entity_id=="weatherobserved-malaga-03",]
malaga.speed.04 <- malaga.speed[malaga.speed$entity_id=="weatherobserved-malaga-04",]
malaga.speed.05 <- malaga.speed[malaga.speed$entity_id=="weatherobserved-malaga-05",]
malaga.speed.06 <- malaga.speed[malaga.speed$entity_id=="weatherobserved-malaga-06",]
malaga.speed.07 <- malaga.speed[malaga.speed$entity_id=="weatherobserved-malaga-07",]
malaga.speed.08 <- malaga.speed[malaga.speed$entity_id=="weatherobserved-malaga-08",]
malaga.speed.09 <- malaga.speed[malaga.speed$entity_id=="weatherobserved-malaga-09",]
malaga.speed.10 <- malaga.speed[malaga.speed$entity_id=="weatherobserved-malaga-10",]

ggplot(malaga.speed.01, aes(x=c(1:nrow(malaga.speed.01)),y = windSpeed)) + geom_line() 
ggplot(malaga.speed.02, aes(x=c(1:nrow(malaga.speed.02)),y = windSpeed)) + geom_line() 
ggplot(malaga.speed.03, aes(x=c(1:nrow(malaga.speed.03)),y = windSpeed)) + geom_line()
ggplot(malaga.speed.04, aes(x=c(1:nrow(malaga.speed.04)),y = windSpeed)) + geom_line()
ggplot(malaga.speed.05, aes(x=c(1:nrow(malaga.speed.05)),y = windSpeed)) + geom_line()
ggplot(malaga.speed.06, aes(x=c(1:nrow(malaga.speed.06)),y = windSpeed)) + geom_line()
ggplot(malaga.speed.07, aes(x=c(1:nrow(malaga.speed.07)),y = windSpeed)) + geom_line()
ggplot(malaga.speed.08, aes(x=c(1:nrow(malaga.speed.08)),y = windSpeed)) + geom_line()
ggplot(malaga.speed.09, aes(x=c(1:nrow(malaga.speed.09)),y = windSpeed)) + geom_line()
ggplot(malaga.speed.10, aes(x=c(1:nrow(malaga.speed.10)),y = windSpeed)) + geom_line()