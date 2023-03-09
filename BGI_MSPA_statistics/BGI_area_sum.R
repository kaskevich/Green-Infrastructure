library(dplyr)
library(tidyr)

df <- read.csv("/Users/thirtyfourty/Desktop/BGI_DP/BGI_DP_Statistics/bgi/bgi_area_sums.csv")

classes <- c("forest", "perm", "natura2000")
areas <- c("area_branches", "area_cores", "area_corridors")

computed_df <- data.frame()
for (region in unique(df$region)) {
  table <- df %>% filter(region == region)
  for (area_type in areas) {
    for (class_ in classes) {
      computed_df <- rbind(computed_df, data.frame(
        region = region,
        class = class_,
        infrastructure_type = gsub("area_", "", area_type),
        area = sum(table[table$class == class_, area_type])
      ))
    }
  }
}

write.csv(computed_df, "bgi_area_sums.csv", row.names = FALSE)