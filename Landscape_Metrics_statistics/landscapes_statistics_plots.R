library(tidyr)
library(ggplot2)

# Load data from CSV file
df <- read.csv("/Users/thirtyfourty/Desktop/BGI_DP/BGI_DP_Statistics/bgi/landscape_statistics.csv", header = TRUE, sep = ",")

# Filter columns needed for the plot
plot_data <- df[, c("region", "bgi_area_ha", "cores_area_ha", "corridors_area_ha", "branches_area_ha")]

# Transform data for ggplot2 format
plot_data <- pivot_longer(plot_data, cols = c("bgi_area_ha", "cores_area_ha", "corridors_area_ha", "branches_area_ha"), names_to = "landscape_element", values_to = "area_ha")

# Plot
ggplot(plot_data, aes(x = region, y = area_ha, fill = landscape_element)) +
    geom_bar(stat = "identity", position = "dodge") +
    theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
    labs(x = "Region", y = "Area (ha)", fill = "Landscape element") +
    scale_fill_manual(values = c("bgi_area_ha" = "#FF0000", "cores_area_ha" = "#0000FF", "corridors_area_ha" = "#00FF00", "branches_area_ha" = "#FFFF00"))
