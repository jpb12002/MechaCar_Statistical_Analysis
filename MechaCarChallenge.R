# Import Library
library(dplyr)

# Import and read "MechaCar_mpg" CSV file as dataframe
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Liner regression using the lm() function
mpg_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

# Summarize linear model
summary(mpg_regression)

# Import and Read CSV file as dataframe
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Import Library
library(tidyverse)

# Create "total_summary" dataframe
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) 

# Create "lot_summary" dataframe
lot_summary <- Suspension_Coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# t-test for all manufacturing lots
t.test(Suspension_Coil$PSI,mu=1500)

Lot1 <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot1')
Lot2 <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot2')
Lot3 <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot3')

# t-test for individual manufacturing lots
t.test(Lot1$PSI,mu=1500)
t.test(Lot2$PSI,mu=1500)
t.test(Lot3$PSI,mu=1500)
