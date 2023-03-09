install.packages("rgdal", type="source")
install.packages("landscapemetrics")
library(landscapemetrics)
library(raster)
setwd("/Users/thirtyfourty/Desktop/BGI_DP/BGI_DP_Statistics")
        
harju<-raster("/Users/thirtyfourty/Desktop/BGI_DP/Cores/Harju_cores.tif")
#harju<-raster("/Users/thirtyfourty/Desktop/BGI_DP/Cores/Harju_cores.tif")
metrics<-calculate_lsm(harju, level="landscape")

list_lsm()
lsm_l_lpi(harju, directions = 8)
lsm_l_area_mn(harju, directions = 8)
lsm_l_pd(harju, directions = 8)
lsm_l_lsi(harju)

area <-lsm_p_area(harju, directions = 8)
area
max(area$value)
show_lsm(harju, directions = 8, what = "lsm_p_area")


laane<-raster("/Users/thirtyfourty/Desktop/BGI_DP/Cores/Laane_cores.tif")
#laane<-raster("/Users/thirtyfourty/Desktop/BGI_DP/Cores/Laane_cores.tif")
metrics<-calculate_lsm(harju, level="landscape")

lsm_l_lpi(laane, directions = 8)
lsm_l_area_mn(laane, directions = 8)
lsm_l_pd(laane, directions = 8)
lsm_l_lsi(laane)

area <-lsm_p_area(laane, directions = 8)
area
max(area$value)
show_lsm(laane, directions = 8, what = "lsm_p_area")

hiiu<-raster("/Users/thirtyfourty/Desktop/BGI_DP/Cores/Hiiu_cores.tif")
#hiiu<-raster("/Users/thirtyfourty/Desktop/BGI_DP/Cores/Hiiu_cores.tif")
metrics<-calculate_lsm(hiiu, level="landscape")

lsm_l_lpi(hiiu, directions = 8)
lsm_l_area_mn(hiiu, directions = 8)
lsm_l_pd(hiiu, directions = 8)
lsm_l_lsi(hiiu)

area <-lsm_p_area(hiiu, directions = 8)
area
max(area$value)
show_lsm(hiiu, directions = 8, what = "lsm_p_area")

idaviru<-raster("/Users/thirtyfourty/Desktop/BGI_DP/Cores/Ida-Viru_cores.tif")
#idaviru<-raster("/Users/thirtyfourty/Desktop/BGI_DP/Cores/Ida-Viru_cores.tif")
metrics<-calculate_lsm(idaviru, level="landscape")

lsm_l_lpi(idaviru, directions = 8)
lsm_l_area_mn(idaviru, directions = 8)
lsm_l_pd(idaviru, directions = 8)
lsm_l_lsi(idaviru)

area <-lsm_p_area(idaviru, directions = 8)
area
max(area$value)
show_lsm(idaviru, directions = 8, what = "lsm_p_area")

laaneviru<-raster("/Users/thirtyfourty/Desktop/BGI_DP/Cores/Lääne-Viru_cores.tif")
#laaneviru<-raster("/Users/thirtyfourty/Desktop/BGI_DP/Cores/Lääne-Viru_cores.tif")
metrics<-calculate_lsm(laaneviru, level="landscape")

lsm_l_lpi(laaneviru, directions = 8)
lsm_l_area_mn(laaneviru, directions = 8)
lsm_l_pd(laaneviru, directions = 8)
lsm_l_lsi(laaneviru)

area <-lsm_p_area(laaneviru, directions = 8)
area
max(area$value)
show_lsm(laaneviru, directions = 8, what = "lsm_p_area")

parnu<-raster("/Users/thirtyfourty/Desktop/BGI_DP/Cores/Pärnu_cores1.tif")
#parnu<-raster("/Users/thirtyfourty/Desktop/BGI_DP/Cores/Pärnu_cores1.tif")
metrics<-calculate_lsm(parnu, level="landscape")

lsm_l_lpi(parnu, directions = 8)
lsm_l_area_mn(parnu, directions = 8)
lsm_l_pd(parnu, directions = 8)
lsm_l_lsi(parnu)

area <-lsm_p_area(parnu, directions = 8)
area
max(area$value)
show_lsm(parnu, directions = 8, what = "lsm_p_area")


saare<-raster("/Users/thirtyfourty/Desktop/BGI_DP/Cores/Saare_cores.tif")
#saare<-raster("/Users/thirtyfourty/Desktop/BGI_DP/Cores/Saare_cores.tif")
metrics<-calculate_lsm(saare, level="landscape")

lsm_l_lpi(saare, directions = 8)
lsm_l_area_mn(saare, directions = 8)
lsm_l_pd(saare, directions = 8)
lsm_l_lsi(saare)

area <-lsm_p_area(saare, directions = 8)
area
max(area$value)
show_lsm(saare, directions = 8, what = "lsm_p_area")

plot(harju)
plot(hiiu)
plot(idaviru)
plot(laaneviru)
plot(laane)
plot(parnu) 
plot(saare)

# total area of cores in Estonian coast by regions (each raster 20, -20 size; m2 <-(n_pxl * 400))
data <- data.frame(harju_c = 595055,
                   laane_c = 479639,
                   hiiu_c = 620609,
                   idaviru_c = 65253,
                   laaneviru_c = 314198,
                   parnu_c = 478865,
                   saare_c = 1197834)
data
data_multi <- data * 400
data
data_multi
#cores from m2 to ha
data_multi <- data_multi/10000
data_multi

library(tidyr)
library(ggplot2)
df <- read.csv("/Users/thirtyfourty/Desktop/bgi_stat/blue-green-infrastructure-r/landscape_statistics.csv", header = TRUE, sep = ",")
plot_data <- df[, c("region", "bgi_area_ha", "cores_area_ha", "corridors_area_ha", "branches_area_ha")]
plot_data <- pivot_longer(plot_data, cols = c("bgi_area_ha", "cores_area_ha", "corridors_area_ha", "branches_area_ha"), names_to = "landscape_element", values_to = "area_ha")

ggplot(plot_data, aes(x = region, y = area_ha, fill = landscape_element)) +
  geom_bar(stat = "identity", position = "dodge") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(x = "Region", y = "Area (ha)", fill = "Landscape element") +
  scale_fill_manual(values = c("bgi_area_ha" = "#FF0000", "cores_area_ha" = "#0000FF", "corridors_area_ha" = "#00FF00", "branches_area_ha" = "#FFFF00"))


