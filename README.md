# Statistics and R
The data analytics team at AutosRUs is responsible for performing retrospective analysis of historical data, analytical validation and verification of current automotive specifications, and study design of future product testing. For this project, we used the R programming language to gather summary statistics for different variables and visualizations for different datasets. Once all the data is analyzed, we will provide our interpretation of the statistical test results. We also provided our own study design on how the AutosRUs manufacturing process could be more efficient.

## Linear Regression to Predict MPG
"MechaCar_mpg.csv" is a dataset of 50 car prototypes that the team used to identify ideal vehicle MPG performance based on the following metrics: vehicle length, vehicle weight, spoiler angle, ground clearance, and enabled AWD. A multiple linear regression model was used to predict which of these metrics (if any) had the most impact on vehicle MPG. 

### Summary
![Image of MPG Regression](https://github.com/jpb12002/MechaCar_Statistical_Analysis/blob/main/Images/MPG%20Linear%20Regression.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - "Vehicle length" and "ground clearance" both have p-values significantly lower than 0.05, which means we can be confident they provided a non-random amount of variance to the mpg values for the various car prototypes. 

- Is the slope of the linear model considered to be zero? Why or why not?
  - Because we have two variables with p-values < 0.05, we can reject the null hypothesis and say that vehicle length and ground clearnace have a significant impact on vehicle MPG performance. Therefore, the slope of the linear model cannot be zero and must show either a positive or negative correlation for these varaibles.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - This linear model does effectively predict MPG of MechaCar protoypes based on two summary statistics. First, there are two variable with p-values < 0.05, which means there is significant evidence to reject the null hypothesis. Second, the multiple r-squared value is 0.71, which means there is a strong correlation between the measured variables and vehicle MPG performance. 

## Summary Statistics on Suspension Coils
"Suspension_Coil.csv" is a dataset containing results from multiple manufacturing lots. Weight capacities of the suspension coils were tested to determine if quality control across manufacturing lots is consistent.

### Summary
![Image of Total Summary](https://github.com/jpb12002/MechaCar_Statistical_Analysis/blob/main/Images/Total_Summary.png)
![Image of Lot Summary](https://github.com/jpb12002/MechaCar_Statistical_Analysis/blob/main/Images/Lot_Summary.png)

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  - All manufacturing lots in total are within normal variance for the suspension coils, as seen in the "Total Summary" dataframe (variance = 62.29). The "Lot Summary" dataframe shows Lot 1 and Lot 2 individually meet the design specifications for suspension coils, with a variance of 0.98 and 7.47 respectively. However, Lot 3 is outside of the design tolerance with a variance of 170.29.

## t-Tests on Suspension Coils
Performed One-Sample t-Test on all manufacturing lots as well as each individual lot to determine if the PSI of the suspension coils being produced is statistically different from the population mean of 1500 pounds per square inch.

The hypotheses were:
- H0: There is no statistical difference between the observed sample mean and its presumed population mean
- Ha: The observed sample mean is statistically different from the presumed population mean

### t-Test on All Manufacturing Lots
![Image of t-test total](https://github.com/jpb12002/MechaCar_Statistical_Analysis/blob/main/Images/t-test%20total.png)
- p-value = 0.06 > 0.05
- Insufficient evidence to reject the null hypothesis

### t-Test on Lot 1
![Image of t-test lot 1](https://github.com/jpb12002/MechaCar_Statistical_Analysis/blob/main/Images/t-test%20Lot%201.png)
- p-value = 1.0 >0.05
- Insufficient evidence to reject the null hypothesis

### t-Test on Lot 2
![Image of t-test lot 2](https://github.com/jpb12002/MechaCar_Statistical_Analysis/blob/main/Images/t-test%20Lot%202.png)
- p-value = 0.61 > 0.05
- Insufficient evidence to reject the null hypothesis

### t-Test on Lot 3
![Image of t-test lot 3](https://github.com/jpb12002/MechaCar_Statistical_Analysis/blob/main/Images/t-test%20Lot%203.png)
- p-value = 0.04 < 0.05
- Null hypothesis is rejected, Lot 3 sample data is statistically different from the population mean

## Study Design: MechaCar vs Competition
Consumers are more energy conscious than ever, and the data analytics team wants to investigate whether MechaCar has more fuel efficient cars compared to the competition, AverageCar. We will study the highway fuel efficiency of MechaCar's lineup to see if the mean MPG of our cars is higher or lower than AverageCar's lineup. Our hypotheses are:
- H0: There is no statistical difference between the mean MPG of MechaCar's vehicles and the mean MPG of AverageCar's vehicles
- Ha: The mean MPG of MechaCar's vehicles is statistically different from the mean MPG of AverageCar's vehicles
A Two-Sample t-Test would be used to test the hypothesis since we are interested in comparing the distribution means from two different samples. We are not comparing the average vehicle MPG from either company to a constant value (e.g., 28 MPG), which would require a One-Sample t-Test. The data needed to run the test would be the mean MPG for all vehicle types at MechaCar as well as the mean MPG for all vehicle types at AverageCar. 
