
# Means bar plot   --------------------------------------------------------

if(!"ggplot2" %in% .packages()) library(ggplot2)

# Global theme
source("analysis/theme.R")

# 1 Import data ----------------------------------------------------------

# 1.1 Summary data
sum_data <- read.csv("data/summary_data.csv")

# 1.2 HSD groups
groups <- read.csv("data/hsd_groups.csv")

# 1.3 Join summary and groups data frames
sum_data <- merge(sum_data, groups, by = "SL")

# 2 Bar chart
bar_plot <- ggplot(sum_data, aes(x = SL, y = MEAN, label = groups)) +
  geom_col(width = 0.5, color = "black", fill = "royalblue1") +
  geom_errorbar(aes(ymin = MEAN - SD, ymax = MEAN + SD), width = 0.1) +
  geom_text(nudge_y = 5, size = 5) +
  xlab("Light source type") +
  ylab("Chlorophyll (mg/g)")

# 3 Save plot
ggsave(filename = "graphs/bar_plot.jpeg", bar_plot)
