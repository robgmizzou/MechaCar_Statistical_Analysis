library(dplyr)

# Deliverable 1
# 1.4 Read in MechaCar_mpg.csv
MechaCar_mpg <- read.csv(file='C:/Users/19193/Desktop/Class Files/Resources/MechaCar_Statistical_Analysis/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# 1.5 Run linear regression across all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))
