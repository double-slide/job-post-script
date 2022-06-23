#!/bin/bash

JOBSITES=job_site_data.csv

# echo $JOB_INPUT;

echo 'Initializing job posting word search...'
 
IFS=','

# [ ! -f $JOBSITES ] && {echo "$JOBSITES file not found"; exit 99; }

while IFS=, read -r col1 
do
	echo "$col1"
	echo "<br>"
done < $JOBSITES




wget -qO- https://www.avalanche.ca/careers \
| grep -q "sunshine" \
&& echo "Found Avalanche Forecaster"

echo 'Job posting word search complete.';
