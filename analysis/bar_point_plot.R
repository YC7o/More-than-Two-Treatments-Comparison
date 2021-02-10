
# Bar with points plot ----------------------------------------------------

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
sum_data <- merge(groups, sum_data, by = "SL")


# 2 Bar point plot --------------------------------------------------------
bar_point_plot <- ggplot(sum_data, aes(x = SL, y = MEAN)) +
  geom_col(
    width = 0.5, color = "black", fill = "royalblue1"
    ) +
  geom_errorbar(
    aes(ymin = MEAN - SD, ymax = MEAN + SD),  width = 0.1
    ) +
  geom_text(
    aes(label = groups), nudge_y = 6.5
    ) +
  geom_point(
    data = main_data, aes(x = SL, y = CLQ), color = "red", size = 1.5
    ) +
  xlab("Light source type") +
  ylab("Chlorophyll (mg/g)")

# 3 Save plot ---------------------------------------------------------------
ggsave(filename = "graphs/bar_point_plot.jpeg", bar_point_plot)
