library(tidyverse)
library(lubridate)
library(stringr)
library(caret)
library(readr)


train_set <- read_csv("train.csv")
test_set <- read_csv("test.csv")

submission <- read_csv("gender_submission.csv")
