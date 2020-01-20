# libraries----
require(ggplot2)
require(dplyr)
require(reshape2)
require(ggrepel)
require(RColorBrewer)
require(cowplot)
require(lubridate)
require(xtable)
require(stringr)
require(scales)
require(gridExtra)
#require(Cairo)

# utilities----
source("utilities/general_utils.R")
source("utilities/incremental_utils.R")
source("utilities/iotsa_utils.R")
source("utilities/param_utils.R")
source("utilities/prediction_utils.R")
source("utilities/statistical_utils.R")
source("utilities/streaming_utils.R")

# global variables----
source("01_var_global.R")
source("02_var_parametric.R")
source("03_var_re1config.R")
source("04_var_mreconfig.R")
source("05_var_statistics.R")