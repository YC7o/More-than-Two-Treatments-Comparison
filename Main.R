# Main script to run the analysis -----------------------------------------

# Preferably, before you run this script restart your R session: 
# Ctrl+Shift+F10 if you are using RStudio

# Packages
library(tidyverse) # Plot, tidy and reformat data 

# 1 Data simulation
source("analysis/data_simulation.R")

# 2 Data summary
source("analysis/sum_data.R")

# 3 ANOVA analysis
source("analysis/aov_analysis.R")

# 4 Tukey HSD test 
source("analysis/hsd_test.R")

# 5 Plots
source("analysis/bar_plot.R")
source("analysis/scatter_plot.R")
source("analysis/bar_scatter_plot.R")

# 6 Session info
capture.output(sessionInfo(), file = "Session_Info.txt")