
# Data summary ------------------------------------------------------------

if(!"dplyr" %in% .packages()) library(dplyr)

# 1 Import data -----------------------------------------------------------
main_data <- read.csv("data/main_data.csv")

# 2 Data summary ---------------------------------------------------------
sum_data <- main_data %>% 
  group_by(SL) %>% 
  summarise(
    MEAN = mean(CLQ),
    SD   = sd(CLQ),
    CV   = SD * 100 / MEAN
  )

# 3 Save summary ---------------------------------------------------------
write.csv(sum_data, file = "data/summary_data.csv", row.names = FALSE)
