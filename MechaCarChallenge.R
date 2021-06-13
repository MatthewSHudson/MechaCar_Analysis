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

coil_df <- read.csv('Suspension_Coil.csv',
                    check.names = F,
                    stringsAsFactors = F)

total_summary <- coil_df %>% 
  summarize(Mean = mean(PSI), 
            Median = median(PSI),
            Variance = var(PSI),
            SD = sd(PSI))

lot_summary <- coil_df %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI), 
            Median = median(PSI),
            Variance = var(PSI),
            SD = sd(PSI),
            .groups = 'keep')

t.test(x = coil_df$PSI, mu = 1500)

t.test(PSI~1,data=coil_df, subset = Manufacturing_Lot == 'Lot1', mu = 1500)

t.test(PSI~1,data=coil_df, subset = Manufacturing_Lot == 'Lot2', mu = 1500)

t.test(PSI~1,data=coil_df, subset = Manufacturing_Lot == 'Lot3', mu = 1500)

