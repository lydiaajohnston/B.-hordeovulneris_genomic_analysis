#!/bin/bash 
# Project directory 
PROJECT="/mnt/c/Users/Lydia/Documents/bh_project/A.hordeovulneris"

# Input files
DOG_R1="$PROJECT/canine_A.hordeovulneris_1.fastq.gz"
DOG_R2="$PROJECT/canine_A.hordeovulneris_2.fastq.gz"
CAT_R1="$PROJECT/feline_A.hordeovulneris_1.fastq.gz"
CAT_R2="$PROJECT/feline_A.hordeovulneris_2.fastq.gz" 

# Run Trimmomatic for dog
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
# Run Trimmomatic for cat 
trimmomatic PE \
    -threads 4 \
    -summary "$PROJECT/trimmed/trimmomatic_cat_summary.txt" \
    "$CAT_R1" \
    "$CAT_R2" \
    "$PROJECT/trimmed/feline_A.hordeovulneris_R1_trimmed.fastq" \
    "$PROJECT/trimmed/feline_A.hordeovulneris_R1_unpaired.fastq" \
    "$PROJECT/trimmed/feline_A.hordeovulneris_R2_trimmed.fastq" \
    "$PROJECT/trimmed/feline_A.hordeovulneris_R2_unpaired.fastq" \
    SLIDINGWINDOW:4:20
    
