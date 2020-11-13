/*THIS DO-FILE OPENS THE DATA FILE CALLED
analysis.dta THAT IS GENERATED BY THE
DO-FILE CALLED processing.do,

THEN GENERATES THE SIX FIGURES THAT ARE 
DISCUSSED IN THE INTERPRETATION PORTION OF THIS
EXERCISE.
*/

*WHEN YOU RUN THIS DO-FILE, MAKE SURE THAT
**********1) STATA'S WORKING DIRECTORY IS SET 
*************TO THE "Command-Files" FOLDER
**********2) THE analysis.dta DATA FILE IS 
*************SAVED IN THE "Analysis-Data" FOLDER



clear
set more off

*START BY OPENING THE analysis.dta
*DATA FILE
use ../Analysis-Data/analysis.dta



*THIS COMMAND GENERATES FIGURE 1

graph bar drunk, ///
	over(free, ///
		relabel(  ///
			1 "Not in Alcohol-Free Housing"  ///
			2 "Lives in Alcohol-Free Housing"  ///
		)) ///
	ytitle("Proportion drunk 3 or more times in past 30 days") ///
	caption("Figure 1: Rates of Heavy Drinking in Alcohol-Free" ///
	"               Versus Not Alcohol-Free Housing") ///
	saving(../Graphs/For-Report/Figure1.gph, replace) 
	
/*You were not expected to use all the options that are shown in the preceding command.
It would have been sufficient just to use this command:

	graph bar drunk, over(free) saving(../Graphs/For-Report/Figure1.gph)

*/
	

*THIS COMMAND GENERATES FIGURE 2   

graph bar drunk, ///
	over(volfree, ///
		relabel(  ///
			1 "Not Voluntarily"  ///
			2 "Voluntarily"  ///
		)) ///
	ytitle("Proportion drunk 3 or more times in past 30 days") ///
	caption("Figure 2: Students in Alcohol-Free Housing By Choice versus Assignment") ///
	saving(../Graphs/For-Report/Figure2.gph, replace) 
	

	/*It would have been sufficient just to use this command:
	
		graph bar drunk, over(volfree) saving(../Graphs/For-Report/Figure2.gph)
	*/


*THIS COMMAND GENERATES FIGURE 3


/*For this figure, it would have been sufficient to use this command:

	graph bar drunk, over(housing) saving(../Graphs/Figure3.gph)

But in this case the long labels on the bars of the figure overlap and are
impossible to read.  In the command below, the "relabel" sub-option
is specified in such a way that the labels for the bars
are shown in two lines, and so don't overlap.*/

graph bar drunk, ///
	over(housing, ///
		relabel(  ///
			1 `""Not" "Alcohol-Free""'   ///
			2 "Assigned" ///
			3 `""All Housing" "Alcohol-Free""'  ///
			4 "Requested"  ///
		)) ///
	ytitle("Proportion drunk 3 or more times in past 30 days") ///
	caption("Figure 3: Drinking by Students in All Housing Types") ///
	saving(../Graphs/For-Report/Figure3.gph, replace)
	
*THIS COMMAND GENERATES FIGURE 4

/*The following would have been sufficient:

	graph bar drunk, over(free) by(hsdrunk) ///
		saving(../Graphs/For-Report/Figure4.gph)		
*/

/*Here is a command with options that create labels.*/
		
graph bar drunk, ///
	over(free, ///
		relabel( ///
			1 `""Not in Alcohol-" "Free Housing""' ///
			2 `""    Lives in Alcohol-" "    Free Housing""'  ///
		)) ///
	over(hsdrunk, ///
		relabel( ///
				1 "Low HS Drinking" ///
				2 "High HS Drinking"  ///
			)) ///
	ytitle("Proportion drunk 3 or more times in past 30 days") ///
	caption("Figure 4: Students in Alcohol-Free versus not Alcohol-Free Housing" ///
	"               Controlling for HS Drinking") ///
	saving(../Graphs/For-Report/Figure4.gph, replace)
	

		
*THIS COMMAND GENERATES FIGURE 5

/*The following would have been sufficient:

	graph bar drunk, over(volfree) by(hsdrunk) ///
		saving(../Graphs/For-Report/Figure5.gph)	
*/

/*Here is a command with options that create labels.*/

graph bar drunk, ///
	over(volfree, ///
		relabel( ///
			1 "Assigned" ///
			2 "Choice" ///
		)) ///
	over(hsdrunk, ///
		relabel( ///
			1 "Low HS Drinking" ///
			2 "High HS Drinking"  ///
			)) ///
	ytitle("Proportion drunk 3 or more times in past 30 days") ///
	caption("Figure 5: Students in Alcohol-Free Housing By Choice versus Assignment") ///
	saving(../Graphs/For-Report/Figure5.gph, replace)
	

*THIS COMMAND GENERATES FIGURE 6

/*The following would have been sufficient:

	graph bar drunk, over(housing) by(hsdrunk) ///
		saving(../Graphs/For-Report/Figure6.gph)	
*/

/*Here is a command with options that create labels.*/

graph bar drunk, ///
	over(housing, ///
		relabel(  ///
			1 `""Not" "Alc.-Free""' ///
			2 "Assigned" ///
			3 `""All" "Alc.-Free""'  ///
			4 "Requested"  ///
		)) ///
	over(hsdrunk, /// 
		relabel(  ///
			1 "Low HS Drinking" ///
			2 "High HS Drinking"  ///
		)) ///
	ytitle("Proportion drunk 3 or more times in past 30 days") ///
	caption("Figure 6: Students in All Housing Types" ///
	"               Controlling for HS Drinking") ///
	saving(../Graphs/For-Report/Figure6.gph, replace)

