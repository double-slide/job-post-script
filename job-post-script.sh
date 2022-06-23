#!/bin/bash

JOB_INPUT = job_site_data.csv

echo 'Initializing job posting word search...';

wget -qO- https://www.avalanche.ca/careers \
| grep -q "sunshine" \
&& echo "Found Avalanche Forecaster"

echo 'Job posting word search complete.';
