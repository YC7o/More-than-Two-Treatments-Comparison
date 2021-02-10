
# Point plot  -------------------------------------------------------------

if (!"ggplot2" %in% .packages()) library(ggplot2)

# Global theme
source("analysis/theme.R")

# 1 Import data -------------------------------------------------------------

# 1.1 Experimental data
main_data <- read.csv("data/main_data.csv")

# 1.2 Summary data
sum_data <- read.csv("data/summary_data.csv")

# 1.3 HSD groups
groups <- read.csv("data/hsd_groups.csv")

# 1.4 Join groups and summary
groups <- merge(groups, sum_data, by = "SL")

# 2 Point plot  -------------------------------------------------------------
point_plot <- ggplot(main_data, aes(x = SL, y = CLQ)) +
  geom_point() +
  stat_summary(fun = mean, geom = "crossbar", width = 0.2, col = "blue") +
  geom_text(data = groups, 
            aes(x = SL, y = MEAN, label = groups), nudge_x = 0.2) + 
  xlab("Light source type") +
  ylab("Chlorophyll (mg/g)")


# 3 Save plot -------------------------------------------------------------
ggsave(filename = "graphs/point_plot.jpeg", point_plot)
