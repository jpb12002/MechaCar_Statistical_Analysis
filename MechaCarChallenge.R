# Import Library
library(dplyr)

# Import and read "MechaCar_mpg" CSV file as dataframe
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Liner regression using the lm() function
mpg_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

# Summarize linear model
summary(mpg_regression)
