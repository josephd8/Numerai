
##### Libraries #####

library(Rnumerai)

##### API ####

# set_public_id(load('C:/Users/JD Cook/Documents/Projects/Numerai/public_id'))
# set_api_key(load('C:/Users/JD Cook/Documents/Projects/Numerai/api_key'))

##### Directory #####

setwd(dir = "./Explore")
data_dir <- getwd()

##### Data #####

data <- download_data(data_dir)
# save(data, file = "data")
data_train <- data$data_train
data_tournament <- data$data_tournament

##### Predictions Format #####

## single
submission <- data.frame(id=data_tournament$id,probability = sample(seq(.35,.65,by=.1),nrow(data_tournament),replace=TRUE))


## multiple
submissions <- list( "Bernie" = data.frame(id=data_tournament$id,probability = sample(seq(.35,.65,by=.1),nrow(data_tournament),replace=TRUE)), "Elizabeth" = data.frame(id=data_tournament$id,probability = sample(seq(.35,.65,by=.1),nrow(data_tournament),replace=TRUE)) )

##### Submitting Predictions #####

## single
# submission_id <- submit_predictions(submission,data_dir,tournament="Elizabeth")

## multiple
# submission_ids <- submit_predictions_multi(submissions,data_dir)


##### Other #####

# For other functionality: https://github.com/Omni-Analytics-Group/Rnumerai