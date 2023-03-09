library(rgdal)
library(landscapemetrics)
library(raster)


setwd("/Users/thirtyfourty/Desktop/ThirtyFourtyDocker/ls_metrics_allstat")

# read in the rasters
harju <- raster("/Users/thirtyfourty/Desktop/ThirtyFourtyDocker/ls_metrics_allstat/Harju_cores.tif")
laane <- raster("/Users/thirtyfourty/Desktop/ThirtyFourtyDocker/ls_metrics_allstat/Laane_cores.tif")
hiiu <- raster("/Users/thirtyfourty/Desktop/ThirtyFourtyDocker/ls_metrics_allstat/Hiiu_cores.tif")
idaviru <- raster("/Users/thirtyfourty/Desktop/ThirtyFourtyDocker/ls_metrics_allstat/Ida-Viru_cores.tif")
laaneviru <- raster("/Users/thirtyfourty/Desktop/ThirtyFourtyDocker/ls_metrics_allstat/Lääne-Viru_cores.tif")
parnu <- raster("/Users/thirtyfourty/Desktop/ThirtyFourtyDocker/ls_metrics_allstat/Pärnu_cores1.tif")
saare <- raster("/Users/thirtyfourty/Desktop/ThirtyFourtyDocker/ls_metrics_allstat/Saare_cores.tif")

raster_list <- list(harju, laane, hiiu, idaviru, laaneviru, parnu, saare)
counties <- c("Harju", "Lääne", "Hiiu", "Ida-Viru", "Lääne-Viru", "Pärnu", "Saare")

# calculate landscape metrics
harju_metrics <- calculate_lsm(harju, level = "landscape")
laane_metrics <- calculate_lsm(laane, level = "landscape")
hiiu_metrics <- calculate_lsm(hiiu, level = "landscape")
idaviru_metrics <- calculate_lsm(idaviru, level = "landscape")
laaneviru_metrics <- calculate_lsm(laaneviru, level = "landscape")
parnu_metrics <- calculate_lsm(parnu, level = "landscape")
saare_metrics <- calculate_lsm(saare, level = "landscape")

# Store the LSM values in a list
metrics_list <- list(
  harju_metrics = harju_metrics,
  laane_metrics = laane_metrics,
  hiiu_metrics = hiiu_metrics,
  idaviru_metrics = idaviru_metrics,
  laaneviru_metrics = laaneviru_metrics,
  parnu_metrics = parnu_metrics,
  saare_metrics = saare_metrics
)

# Convert the list to a data frame
metrics_df <- as.data.frame(t(metrics_list))

# Add a column with the region names
metrics_df$region <- row.names(metrics_df)

# Rename the last column to "region"
colnames(metrics_df)[length(colnames(metrics_df))] <- "region"

# View the data frame
metrics_df

str(metrics_df)

# Install the required package
install.packages("writexl")

# Load required library
library(openxlsx)

# Combine patch metrics data from all counties into a single data frame
patch_metrics_df <- do.call(rbind, metrics_list)

# Create a list of metrics and their corresponding names
metrics_list <- list(
  "area" = "Area",
  "cai" = "CAI",
  "circle" = "Circle",
  "contig" = "Contig",
  "core" = "Core",
  "enn" = "ENN",
  "frac" = "Frac",
  "gyrate" = "Gyrate",
  "ncore" = "NCORE",
  "para" = "Para",
  "perim" = "Perim",
  "shape" = "Shape"
)

# Create a new workbook
wb <- createWorkbook()

# Loop through each metric
for (metric_name in names(metrics_list)) {
  
  # Subset the patch metrics data for the current metric
  metric <- patch_metrics_df[patch_metrics_df$metric == metric_name, ]
  
  # Create a new sheet for the current metric
  addWorksheet(wb, metrics_list[[metric_name]])
  
  # Write the data to the current sheet
  writeData(wb, sheet = metrics_list[[metric_name]], x = metric)
}

# Save the workbook to an Excel file
saveWorkbook(wb, "patch_metrics.xlsx")








