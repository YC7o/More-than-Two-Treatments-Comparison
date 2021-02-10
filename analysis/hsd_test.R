
# Multiple comparisons: Tukey --------------------------------------------

if(!"agricolae" %in% .packages()) library(agricolae)

# 1 Import data -----------------------------------------------------------
main_data <- read.csv(file = "data/main_data.csv")

# 2 HSD test --------------------------------------------------------------

# 2.1 Fit AOV model
data_aov <- aov(CLQ ~ SL, data = main_data)

# 2.2 HSD test on aov model
hsd_test <- HSD.test(data_aov, trt = "SL")

# 3 Save results

# 3.1 Groups from hsd_test
hsd_groups <- data.frame(
  SL = row.names(hsd_test$groups), 
  groups = hsd_test$groups[,2]
  )

# 3.2 Save as a data frame
write.csv(hsd_groups, file = "data/hsd_groups.csv", row.names = FALSE)
