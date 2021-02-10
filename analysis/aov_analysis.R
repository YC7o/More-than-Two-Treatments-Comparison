
# Analysis of Variance ----------------------------------------------------

# 1 Import data -----------------------------------------------------------
main_data <- read.csv("data/main_data.csv")

# 2 AOV analysis ----------------------------------------------------------

# 2.1 Fit AOV model
data_aov <- aov(CLQ ~ SL, data = main_data)

# 2.2 ANOVA table 
anova_table <- anova(data_aov)

# 3 Save results ----------------------------------------------------------
write.csv(
  anova_table, file = "data/ANOVA_table.csv", 
  row.names = FALSE, na = ""
  )
