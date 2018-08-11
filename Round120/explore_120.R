##### Libraries #####

library(Rnumerai)

##### Directory #####

setwd(dir = "./Round120")
data_dir <- getwd()

##### Data #####

data <- download_data(data_dir)
# save(data, file = "data")
data_train <- data$data_train
data_tournament <- data$data_tournament