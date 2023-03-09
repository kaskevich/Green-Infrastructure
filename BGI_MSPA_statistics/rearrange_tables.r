files <- list.files('data', full.names = TRUE)

files_branches <- files[grep('_branches', files)]
files_cores <- files[grep('_cores', files)]
files_corridors <- files[grep('_corridors', files)]

rearrange_tables <- function(files, table_name) {
  table <- data.frame()

  for (file in files) {
    region <- strsplit(strsplit(file, '/')[[1]][2], '_')[[1]][1]
    data <- read.csv(file, header = TRUE)
    data$region <- region
    table <- rbind(table, data)
  }

  write.csv(table, paste0('./', table_name, '.csv'), row.names = FALSE)

  table
}

branches_data = rearrange_tables(files_branches, 'branches_r')