library(dplyr)
library(tidyverse)

# Deliverable 1
# 1.4 Read in MechaCar_mpg.csv
MechaCar_mpg <- read.csv(file='C:/Users/19193/Desktop/Class Files/Resources/MechaCar_Statistical_Analysis/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# 1.5 Run linear regression across all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))

#Deliverable 2
# 2.2 Read in suspension_coil.csv
Suspension_Coil <- read.csv(file='C:/Users/19193/Desktop/Class Files/Resources/MechaCar_Statistical_Analysis/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
# 2.3 Write a RScript that creates total_summary dataframe with summarize function
total_summary <- Suspension_Coil %>% summarise(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI),SD = sd(PSI))
# 2.4 Write a lot_summary using group_by function
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI),SD = sd(PSI), .groups = 'keep')


