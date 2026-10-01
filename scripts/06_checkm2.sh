#!/bin/bash 
# Define variables 
PROJECT="/mnt/c/Users/Lydia/Documents/bh_project/A.hordeovulneris" 

# Run checkm2 to determine the completedness for the two bacterial genomes 
checkm2 predict \
--threads 4 \
--input "$PROJECT/checkm2_inputs" \
--output-directory "$PROJECT/checkm2_outputs" \
-x fasta 
