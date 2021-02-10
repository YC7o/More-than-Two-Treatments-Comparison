
# Data simulation ---------------------------------------------------------

# For reproducibility 
set.seed(5)

# Packages
if (!"purrr" %in% .packages()) library(purrr)

# 1 Treatments data -------------------------------------------------------

# 1.1 Treatments means
t_means <- c(23.5, 35.7, 24, 16.9)

# 1.2 Data for 6 replicates
t_data <- unlist(map2(6, t_means, rnorm, sd = 1.5))
t_data <- signif(t_data, digits = 3)


# 2 Treatments categories -------------------------------------------------

t_categories <- rep(c("SL1", "SL2", "SL3", "SL4"), each = 6)

# 3 Data frame for data and categories ------------------------------------
data <- data.frame(
  SL  = t_categories,
  CLQ = t_means
)

# 3.1 Export data
write.csv(data, file = "data/main_data.csv")
