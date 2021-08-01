# Statistic and R
The data analytics team at AutosRUs is responsible for performing retrospective analysis of historical data, analytical validation and verification of current automotive specifications, and study design of future product testing. For this project, we used the R programming language to gather summary statistics for different variables and visualizations for different datasets. Once all the data is analyzed, we will provide our interpretation of the statistical test results. We also provided our own study design on how the AutosRUs manufacturing process could be more efficient.

## Linear Regression to Predict MPG
MechaCar_mpg is a dataset of 50 car prototypes that the team used to identify ideal vehicle MPG performance based on the following metrics: vehicle length, vehicle weight, spoiler angle, ground clearance, and enabled AWD. A multiple linear regression model was used to predict which of these metrics (if any) had the most impact on vehicle MPG. 

### Summary
![Image of MPG Regression](https://github.com/jpb12002/MechaCar_Statistical_Analysis/blob/main/Images/MPG%20Linear%20Regression.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - "Vehicle length" and "ground clearance" both have p-values significantly lower than 0.05, which means we can be confident they provided a non-random amount of variance to the mpg values for the various car prototypes. 

- Is the slope of the linear model considered to be zero? Why or why not?
  - Because we have two variables with p-values < 0.05, we can reject the null hypothesis and say that vehicle length and ground clearnace have a significant impact on vehicle MPG performance. Therefore, the slope of the linear model cannot be zero and must show either a positive or negative correlation for these varaibles.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - This linear model does effectively predict MPG of MechaCar protoypes based on two summary statistics. First, there are two variable with p-values < 0.05, which means there is significant evidence to reject the null hypothesis. Second, the multiple r-squared value is 0.71, which means there is a strong correlation between the measured variables and vehicle MPG performance. 
