/*THIS DO-FILE OPENS THE DATA FROM THE
HARVARD SCHOOL OF PUBLIC HEALTH COLLEGE
ALCOHOL STUDY (ICPSR 4291),

THEN PROCESSES THE DATA TO PREPARE THEM
FOR ANALYSIS,

THEN SAVES THE PROCESSED DATA IN A FILE
CALLED analysis.dta
*/


/* This file assumes the following file structure:

 - Do-files are in a folder named "Command-Files".
 - Source data are in the "Original-Data" folder.
 - Derived datasets are in the "Analysis-Data" folder.
 - Markstat Stata Markdown file is in the "Reports" folder
 - Current directory is one step above these subfolders:

  --| current
       --| Analysis-Data
       --| Command-Files
       --| Original-Data
       --| Reports

Note that markstat includes a number of dependencies that may
be specific to your operating system. See
http://data.princeton.edu/stata/markdown */

* change to manuscript directory
cd "Reports"

* generate report
markstat using "report.stmd", pdf bib strict

* back to project directory
cd ..

