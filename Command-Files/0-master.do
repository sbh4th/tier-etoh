/*THIS DO-FILE IS A 'MASTER' FILE
THAT RUNS THE FOLLOWING DO-FILES:
1-processing.do
2-analysis.do
3-data-appendix.do
4-report.do

THEN CREATES THE REPORT IN A FILE 
CALLED report.pdf
*/

do "Command-Files/1-processing.do"

do "Command-Files/2-analysis.do"

do "Command-Files/3-data-appendix.do"

do "Command-Files/4-report.do"
