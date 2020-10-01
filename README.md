# shell-scripts

README for deployment

This script has the template to loopthrough and merge xmls , a common use case when dealing with systems

SCRIPTDIR holds the scripts
TARGETFILEDIR is where the script creates the final merged xml
SOURCEFILEDIR holds the input files (typically asynchronously created by a different process)

The input xml file has this format ST2000POSMessage.xml, ST2001POSMessage.xml. 
In this example we parsing and mergin xmls created by pos systems 
and we are retaining a level in the merged xml file with the number identifier(2000 and 2001) in the input file name.

loopthru_individual_xmlfiles.sh loops through all the xmls in the <source file dir> and parses/merges the file into 1 target xml file.
