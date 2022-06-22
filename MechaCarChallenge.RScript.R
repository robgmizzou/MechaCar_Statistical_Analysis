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

#Deliverable 3
#T-test all manufacturing variance from population mean
t.test(Suspension_Coil$PSI, mu = 1500)

#One Sample t-test
#data:  Suspension_Coil$PSI
#t = -1.8931, df = 149, p-value = 0.06028
#alternative hypothesis: true mean is not equal to 1500
#95 percent confidence interval:
#  1497.507 1500.053
#sample estimates:
#  mean of x 
#1498.78

#T-test for Lot1
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot1"),mu=1500)

#One Sample t-test
#data:  subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot1")
#t = 0, df = 49, p-value = 1
#alternative hypothesis: true mean is not equal to 1500
#95 percent confidence interval:
#  1499.719 1500.281
#sample estimates:
#  mean of x 
#1500

#T-test for Lot2
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot2"),mu=1500)

#One Sample t-test
#data:  subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot2")
#t = 0.51745, df = 49, p-value = 0.6072
#alternative hypothesis: true mean is not equal to 1500
#95 percent confidence interval:
#  1499.423 1500.977
#sample estimates:
#  mean of x 
#1500.2

#T-test for Lot3
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot3"),mu=1500)

#One Sample t-test
#data:  subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot3")
#t = -2.0916, df = 49, p-value = 0.04168
#alternative hypothesis: true mean is not equal to 1500
#95 percent confidence interval:
#  1492.431 1499.849
#sample estimates:
#  mean of x 
#1496.14

