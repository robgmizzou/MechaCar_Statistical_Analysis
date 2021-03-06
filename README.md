# MechaCar Prototyping


## Linear Regression to Predict MPG
Using multiple vehicle metrics, we have attempted to isolate factors most impactful to the performance of the MechaCar prototypes.<br>
Vehicle length and ground clearance had statistically significant impacts on Miles per Gallon (MPG) performance.<br>
The p-value for this model is 5.35e-11, meaning the null must be rejected and the test is statistically significant.  The relationship between our variables and MPG is not random chance.<br>
Despite the small number of variables considered, this model did a reasonable job predicting MPG of MechaCar prototypes.  The R-Squared value of 71% indicate high relative prediction accuracy.<br>

## Summary Statistics on Suspension Coils

Summary with screenshots of total_summary and lot_summary dataframes<br>

![image](https://user-images.githubusercontent.com/100323377/176027808-c3434f28-b3b6-4cbb-9d2f-6cbd779709d2.png)<br>

IN total, the total populations of suspension coils meet the tolerance requirement for variance.  The total population variance was within the 100 PSI limit, with the total population variance being 62.3 PSI.  <br>

## T-test on Suspension Coils

![image](https://user-images.githubusercontent.com/100323377/176027709-887903f4-6932-4af6-aaa3-e8c13825227d.png)<br>

By breaking the suspension coil data up by lot, a t-test indicated that the sample mean for lot 3 coils were stattically different from the population mean overall.  The small p-value tells us to reject that null hypothesis on lot 3 coils, which assumed that the coils shared the meain with the total coil population.  Lot 1 and 2 coils did meet the criteria to accept the null on those samples.

## Study Design: Mecha Car vs Competition

Depending on the priorities on the AutosRUs organization, numberous follow up studies could be considered assuming the avaialability of competitor data. Using Fuel Efficient as a common factor in car buying decisions, we can determine MechaCar's place in the competitive landscape. Higher MPG rating indicates a more fuel efficient car for models of similar size and form.<br>

-Test metric: Fuel Efficiency in Miles per Gallon (MPG)<br>

-Test hypothesis:<br>
- Null hypothesis: MechaCar MPG rating is not significantly different from its competitors<br>
- Alternate Hypothesis: MechaCar MPG rating is significantly different from its competitors<br>

-ANOVA test could demonstrate if the MechaCar mean MPG is statistically different than compentitor models MPG.<br>
-Fueld Efficiency data for MechaCar and its competitors<br>
