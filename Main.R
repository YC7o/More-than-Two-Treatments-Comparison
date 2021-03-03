# Main script to run the analysis -----------------------------------------

# Preferably, before you run this script restart your R session: 
# Ctrl+Shift+F10 if you are using RStudio

# Packages
library(tidyverse) # Plot, tidy and reformat data 

# 1 Paper data processing
source("analysis/paper_data_processing.R")

# 2 Data simulation
source("analysis/data_simulation.R")

# 3 PCA analysis
source("analysis/pca_analysis.R")

# 4 PCA plots
source("analysis/pca_plots.R")

# 5 Metabolites line plots
source("analysis/met_plots.R")

# 6 Session info
capture.output(sessionInfo(), file = "Session_Info.txt")