library(tidyverse)

df <- read.csv('MechaCar_mpg.csv',
               check.names = F,
               stringsAsFactors = F)

lmodedl <- lm(mpg ~ vehicle_length + 
                vehicle_weight + 
                spoiler_angle +
                ground_clearance +
                AWD,
              df)

summary(lmodedl)
