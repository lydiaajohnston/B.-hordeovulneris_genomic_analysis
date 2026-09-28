#!/bin/bash 
# Project directory 
PROJECT="/mnt/c/Users/Lydia/Documents/bh_project/A.hordeovulneris"

# Input files
DOG_R1="$PROJECT/canine_A.hordeovulneris_1.fastq.gz"
DOG_R2="$PROJECT/canine_A.hordeovulneris_2.fastq.gz"

# Run Trimmomatic
trimmomatic PE \
    -threads 4 \
    -summary "$PROJECT/trimmed/trimmomatic_summary.txt" \
    "$DOG_R1" \
    "$DOG_R2" \
    "$PROJECT/trimmed/canine_A.hordeovulneris_R1_trimmed.fastq" \
    "$PROJECT/trimmed/canine_A.hordeovulneris_R1_unpaired.fastq" \
    "$PROJECT/trimmed/canine_A.hordeovulneris_R2_trimmed.fastq" \
    "$PROJECT/trimmed/canine_A.hordeovulneris_R2_unpaired.fastq" \
    SLIDINGWINDOW:4:20
