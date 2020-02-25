library(tidyverse)
library(lubridate)
library(stringr)
library(caret)
library(readr)


train_set <- read_csv("train.csv")
test_set <- read_csv("test.csv")

submission <- read_csv("sampleSubmission.csv")


# head(submission)



# remove casual registered
train_set <- train_set[,-c(10:11)]

train_set <- train_set %>% 
  mutate(group = sample(
    c("train", "valid"),
    size = nrow(train_set),
    replace = TRUE,
    prob = c(0.7, 0.3) # Set weights for each group here
  ))


valid_set <- train_set %>% 
  filter(group == "valid")

train_set <- train_set %>% 
  filter(group == "train")



dim(train_set)
dim(valid_set)

str(train_set)
str(valid_set)

colnames(train_set)
colnames(valid_set)

head(train_set)
head(valid_set)


ggplot(data = train_set, aes(temp,count)) + 
  geom_point(alpha = 0.3, aes(color = temp)) + 
  theme_bw()

ggplot(data = train_set, aes(humidity,count)) + 0
  geom_point(alpha = 0.3, aes(color = humidity)) + 
  theme_bw()


train_set$season


