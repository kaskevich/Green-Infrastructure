
library(ggplot2)
library(ggpubr)
library(tidyverse)
library(broom)
library(AICcmodavg)

setwd("/Users/thirtyfourty/Desktop/ThirtyFourtyDocker/ls_metrics_allstat/")

library(xlsx)

# Define the names of the sheets to read
sheet_names <- c("Area", "CAI", "Circle", "Contig", "Core", "ENN", "Frac", "Gyrate", "NCORE", "Para", "Perim", "Shape")

# Read in the data from each sheet and store it in a list
ls_patch_metrics_results <- lapply(sheet_names, function(sheet_name) {
  read.xlsx2("/Users/thirtyfourty/Desktop/ThirtyFourtyDocker/ls_metrics_allstat/patch_metrics_value.xlsx", sheetName = sheet_name)
})

# Name each element of the list after the sheet it corresponds to
names(ls_patch_metrics_results) <- sheet_names

# Define the metrics list
metrics_list <- list(
  "Area" = "area_value",
  "CAI" = "cai_value",
  "Circle" = "circle_value",
  "Contig" = "contig_value",
  "Core" = "core_value",
  "ENN" = "enn_value",
  "Frac" = "frac_value",
  "Gyrate" = "gyrate_value",
  "NCORE" = "ncore_value",
  "Para" = "para_value",
  "Perim" = "perim_value",
  "Shape" = "shape_value"
)

# Read in data from "Area" sheet
ls_patch_metrics_results <- read.xlsx("patch_metrics_value.xlsx", sheet = "Area")
# Perform ANOVA for "Area" sheet
one.way <- aov(area_value ~ county, data = ls_patch_metrics_results)
summary(one.way)
tukey <- TukeyHSD(one.way)
tukey
# Fit the ANOVA model
model <- aov(area_value ~ county, data = ls_patch_metrics_results)
# Get the ANOVA table as a data frame
anova_table <- as.data.frame(anova(model))
# Write the ANOVA table to an Excel file
library(openxlsx)
write.xlsx(anova_table, file = "anova_results_area.xlsx", sheetName = "Area", append = TRUE)


# Read in data from "CAI" sheet
ls_patch_metrics_results <- read.xlsx("patch_metrics_value.xlsx", sheet = "CAI")
# Perform ANOVA for "CAI" sheet
one.way <- aov(cai_value ~ county, data = ls_patch_metrics_results)
summary(one.way)
tukey <- TukeyHSD(one.way)
tukey
# Fit the ANOVA model
model <- aov(cai_value ~ county, data = ls_patch_metrics_results)
# Get the ANOVA table as a data frame
anova_table <- as.data.frame(anova(model))
# Write the ANOVA table to an Excel file
write.xlsx(anova_table, file = "anova_results_CAI.xlsx", sheetName = "CAI", append = TRUE)

# Read in data from "Circle" sheet
ls_patch_metrics_results <- read.xlsx("patch_metrics_value.xlsx", sheet = "Circle")
# Perform ANOVA for "Circle" sheet
one.way <- aov(circle_value ~ county, data = ls_patch_metrics_results)
summary(one.way)
tukey <- TukeyHSD(one.way)
tukey
# Fit the ANOVA model
model <- aov(circle_value ~ county, data = ls_patch_metrics_results)
# Get the ANOVA table as a data frame
anova_table <- as.data.frame(anova(model))
# Write the ANOVA table to an Excel file
write.xlsx(anova_table, file = "anova_results_Circle.xlsx", sheetName = "Circle", append = TRUE)

# Read in data from "Contig" sheet
ls_patch_metrics_results <- read.xlsx("patch_metrics_value.xlsx", sheet = "Contig")
# Perform ANOVA for "Contig" sheet
one.way <- aov(contig_value ~ county, data = ls_patch_metrics_results)
summary(one.way)
tukey <- TukeyHSD(one.way)
tukey
# Fit the ANOVA model
model <- aov(contig_value ~ county, data = ls_patch_metrics_results)
# Get the ANOVA table as a data frame
anova_table <- as.data.frame(anova(model))
# Write the ANOVA table to an Excel file
write.xlsx(anova_table, file = "anova_results_Contig.xlsx", sheetName = "Contig", append = TRUE)

# Read in data from "Core" sheet
ls_patch_metrics_results <- read.xlsx("patch_metrics_value.xlsx", sheet = "Core")
# Perform ANOVA for "Core" sheet
one.way <- aov(core_value ~ county, data = ls_patch_metrics_results)
summary(one.way)
tukey <- TukeyHSD(one.way)
tukey
# Fit the ANOVA model
model <- aov(core_value ~ county, data = ls_patch_metrics_results)
# Get the ANOVA table as a data frame
anova_table <- as.data.frame(anova(model))
# Write the ANOVA table to an Excel file
write.xlsx(anova_table, file = "anova_results_Core.xlsx", sheetName = "Core", append = TRUE)


# Read in data from "ENN" sheet
ls_patch_metrics_results <- read.xlsx("patch_metrics_value.xlsx", sheet = "ENN")
# Perform ANOVA for "ENN" sheet
one.way <- aov(enn_value ~ county, data = ls_patch_metrics_results)
summary(one.way)
tukey <- TukeyHSD(one.way)
tukey
# Fit the ANOVA model
model <- aov(enn_value ~ county, data = ls_patch_metrics_results)
# Get the ANOVA table as a data frame
anova_table <- as.data.frame(anova(model))
# Write the ANOVA table to an Excel file
write.xlsx(anova_table, file = "anova_results_ENN.xlsx", sheetName = "ENN", append = TRUE)


# Read in data from "Frac" sheet
ls_patch_metrics_results <- read.xlsx("patch_metrics_value.xlsx", sheet = "Frac")
# Perform ANOVA for "Frac" sheet
one.way <- aov(frac_value ~ county, data = ls_patch_metrics_results)
summary(one.way)
tukey <- TukeyHSD(one.way)
tukey
# Fit the ANOVA model
model <- aov(frac_value ~ county, data = ls_patch_metrics_results)
# Get the ANOVA table as a data frame
anova_table <- as.data.frame(anova(model))
# Write the ANOVA table to an Excel file
write.xlsx(anova_table, file = "anova_results_Frac.xlsx", sheetName = "Frac", append = TRUE)

# Read in data from "Gyrate" sheet
ls_patch_metrics_results <- read.xlsx("patch_metrics_value.xlsx", sheet = "Gyrate")
# Perform ANOVA for "Gyrate" sheet
one.way <- aov(gyrate_value ~ county, data = ls_patch_metrics_results)
summary(one.way)
tukey <- TukeyHSD(one.way)
tukey
# Fit the ANOVA model
model <- aov(gyrate_value ~ county, data = ls_patch_metrics_results)
# Get the ANOVA table as a data frame
anova_table <- as.data.frame(anova(model))
# Write the ANOVA table to an Excel file
write.xlsx(anova_table, file = "anova_results_Gyrate.xlsx", sheetName = "Gyrate", append = TRUE)

# Read in data from "NCORE" sheet
ls_patch_metrics_results <- read.xlsx("patch_metrics_value.xlsx", sheet = "NCORE")
# Perform ANOVA for "NCORE" sheet
one.way <- aov(ncore_value ~ county, data = ls_patch_metrics_results)
summary(one.way)
tukey <- TukeyHSD(one.way)
tukey
# Fit the ANOVA model
model <- aov(ncore_value ~ county, data = ls_patch_metrics_results)
# Get the ANOVA table as a data frame
anova_table <- as.data.frame(anova(model))
# Write the ANOVA table to an Excel file
write.xlsx(anova_table, file = "anova_results_NCORE.xlsx", sheetName = "NCORE", append = TRUE)

# Read in data from "Para" sheet
ls_patch_metrics_results <- read.xlsx("patch_metrics_value.xlsx", sheet = "Para")
# Perform ANOVA for "Para" sheet
one.way <- aov(para_value ~ county, data = ls_patch_metrics_results)
summary(one.way)
tukey <- TukeyHSD(one.way)
tukey
# Fit the ANOVA model
model <- aov(para_value ~ county, data = ls_patch_metrics_results)
# Get the ANOVA table as a data frame
anova_table <- as.data.frame(anova(model))
# Write the ANOVA table to an Excel file
write.xlsx(anova_table, file = "anova_results_Para.xlsx", sheetName = "Para", append = TRUE)

# Read in data from "Perim" sheet
ls_patch_metrics_results <- read.xlsx("patch_metrics_value.xlsx", sheet = "Perim")
# Perform ANOVA for "Perim" sheet
one.way <- aov(perim_value ~ county, data = ls_patch_metrics_results)
summary(one.way)
tukey <- TukeyHSD(one.way)
tukey
# Fit the ANOVA model
model <- aov(perim_value ~ county, data = ls_patch_metrics_results)
# Get the ANOVA table as a data frame
anova_table <- as.data.frame(anova(model))
# Write the ANOVA table to an Excel file
write.xlsx(anova_table, file = "anova_results_Perim.xlsx", sheetName = "Perim", append = TRUE)

# Read in data from "Shape" sheet
ls_patch_metrics_results <- read.xlsx("patch_metrics_value.xlsx", sheet = "Shape")
# Perform ANOVA for "Shape" sheet
one.way <- aov(shape_value ~ county, data = ls_patch_metrics_results)
summary(one.way)
tukey <- TukeyHSD(one.way)
tukey
# Fit the ANOVA model
model <- aov(shape_value ~ county, data = ls_patch_metrics_results)
# Get the ANOVA table as a data frame
anova_table <- as.data.frame(anova(model))
# Write the ANOVA table to an Excel file
write.xlsx(anova_table, file = "anova_results_Shape.xlsx", sheetName = "Shape", append = TRUE)

library(openxlsx)

# Create a new workbook
new_workbook <- createWorkbook()

# List of file names
file_names <- c("anova_results_area.xlsx", "anova_results_CAI.xlsx", "anova_results_Circle.xlsx", 
                "anova_results_Contig.xlsx", "anova_results_Core.xlsx", "anova_results_ENN.xlsx", 
                "anova_results_Frac.xlsx", "anova_results_Gyrate.xlsx", "anova_results_NCORE.xlsx", 
                "anova_results_Para.xlsx", "anova_results_Perim.xlsx", "anova_results_Shape.xlsx")

# Loop through the files and add each sheet to the new workbook
for (i in seq_along(file_names)) {
  # Get sheet name from file name
  sheet_name <- tools::file_path_sans_ext(basename(file_names[i]))
  
  # Read in data from sheet
  sheet_data <- read.xlsx(file_names[i], sheet = 1)
  
  # Add sheet to new workbook
  addWorksheet(new_workbook, sheet_name)
  writeData(new_workbook, sheet_name, sheet_data)
}

# Save the new workbook
saveWorkbook(new_workbook, "LSM_Annova_PM_results.xlsx")








