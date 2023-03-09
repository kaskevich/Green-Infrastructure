data <- read.csv("/Users/thirtyfourty/Desktop/BGI_DP/BGI_DP_Statistics/bgi/bgi_area_sums.csv")
ggplot(data, aes(x = region, y = area, color = class, group = class)) + 
  geom_line() +
  facet_wrap(~ infrastructure_type) +
  ggtitle("BGI Area by Region and Class, faceted by Infrastructure Type") +
  xlab("Region") +
  ylab("Area (units)")


ggplot(read.csv("/Users/thirtyfourty/Desktop/BGI_DP/BGI_DP_Statistics/bgi/bgi_area_sums.csv"), aes(x = area, y = region, fill = class)) + 
  geom_bar(stat = "identity", width = 0.5) +
  facet_wrap(~ infrastructure_type) +
  ggtitle("BGI Area Sums by Region, Class, and Infrastructure Type") +
  xlab("Area (units)") +
  ylab("Region") +
  coord_flip()

ggplot(read.csv("/Users/thirtyfourty/Desktop/BGI_DP/BGI_DP_Statistics/bgi/bgi_area_sums.csv"), aes(x = region, y = area, fill = class)) + 
  geom_col() +
  facet_wrap(~ infrastructure_type) +
  ggtitle("BGI Area Sums by Region, Class, and Infrastructure Type") +
  xlab("Region") +
  ylab("Area (units)") +
  theme(axis.text.x = element_text(size = 6))

ggplot(read.csv("/Users/thirtyfourty/Desktop/BGI_DP/BGI_DP_Statistics/bgi/bgi_area_sums.csv"), aes(x = region, y = area, fill = class)) + 
  geom_col() +
  facet_wrap(~ infrastructure_type) +
  ggtitle("BGI Area Sums by Region, Class, and Infrastructure Type") +
  xlab("Region") +
  ylab("Area (units)") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

ggplot(data, aes(x = region, y = area, fill = class)) + 
  geom_col(position = "stack") +
  facet_wrap(~ infrastructure_type) +
  ggtitle("BGI Area Sums by Region, Class, and Infrastructure Type") +
  xlab("Region") +
  ylab("Area (units)") +
  scale_fill_manual(values=c("forest" = "#939393", "perm" = "#ff0000", "natura2000" = "#00ccff"))

ggplot(data, aes(x = region, y = area, fill = class)) + 
  geom_col(position = "stack") +
  facet_wrap(~ infrastructure_type) +
  ggtitle("BGI Area Sums by Region, Class, and Infrastructure Type") +
  xlab("Region") +
  ylab("Area (units)") +
  theme(axis.text.x = element_text(angle = 90,size = 8)) +
  scale_fill_manual(values=c("forest" = "#939393", "perm" = "#ff0000", "natura2000" = "#00ccff")) +
  scale_y_log10()