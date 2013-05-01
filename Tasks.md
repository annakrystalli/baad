# Tasks for Allometry Hackathon, 2013.05.01 

## Discussions

* two possible papers
* Discuss merits of "transparent DataR"

## Getting email sent

* How to automate emails - applescript or bash to gmail, direct or via Mailplane or Apple mail (Rich)
* Review variable list, names and definitions (Remko and Daniel)
* Write email (Daniel)
* Process for managing "stage" of project
* Expressions for units in plots [harder than it sounds]
* Resolve taxonomy (family names, higher?) using taxize or other?
* Referencing
   - Import bib files for each study
   - Function to print reference, also DOI, URL


## Code improvements

* Move to github, clear history first
* Review all code, identify places to improve code / bad pratices (?Rich)
    - Improve stacking of dataframes using Rbind
    - change use of "raw", conflict with function name
* function to create std files for a new study
* User manual, exp for importing data
* Function to find and replace a variable name throughout project. Untested draft
    fn <- list.files(pattern="\\.R", recursive=TRUE, full.names=TRUE)
    for(i in 1:length(fn)){
       r <- readLines(fn[i])
       r <- gsub("raw","rawdata",r)
     writeLines(r, fn[i])
    }

## Data issues

* determine contact details for Roth data
* Change variable.match file on folder Epron 2012, line 11, column var_out: from h.t to c.d -> I put a question to the authors to figure out what variable this actually is, it is not clear from their dataset and explanations
* Change variable.match file on folder Kohyama 1987, line 5, column var_out: from d.cr to d.cr2 -> I already added the variable d.cr2 to the variable.definitions.csv file, but for the moment we will use d.cr to compare the newer output datasets with the older ones.
* Same thing as above for Kohyama1994, line 4, column var_out
* Same thing as above for Sterck2001, line 6, column var_out
* Delete lines 4,6,8,10 (fresh mass variables, not to be used) in variable.match.csv from folder Wang2011
* Check references for Domec 2012. Previous version had 3 different references. Do we need to split into more studies?
* Check references for Kenzo 2009
* Mistake in Rodriguez2003/dataManipulate.r crown classes are all the same??. Fix and move to dataNew.csv
* McCulloh2010 - check we are only taking largest individual, as rest are branch level data

## Other data to import

* Entries from Jeff Kelly data in shared dropbox folder
* Duursma 2012