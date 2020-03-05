library(tidyverse)

patient_set$infection_reason

patient_set %>% 
  filter(infection_reason != "NA") %>% 
  select(infection_reason) %>% 
  count(infection_reason)

patient_set$infection_reason %>% 
  as.factor()
  

patient_set <- read_csv("coronavirus_south_korea/patient.csv")
route_set <- read_csv("coronavirus_south_korea/route.csv")
time_set <- read_csv("coronavirus_south_korea/time.csv")

summary(patient_set)

patient_set %>% 
  filter(group != "NA") %>% 
  select(group)

patient_set %>% 
  filter(state == "deceased")
  
patient_set %>% 
  arrange(desc(contact_number))


patient_set %>% 
  filter(region == "Daegu") 

route_set %>% 
  tail()

route_set %>% 
  filter(id == 31)

time_set %>% 
  tail()

route_set$latitude
route_set$longitude


patient_set$infection_order %>% 
  plot()

patient_set %>% colnames

patient_set$infected_by  
