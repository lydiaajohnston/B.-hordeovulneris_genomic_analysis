#!/bin/bash

# Project directory
PROJECT="/mnt/c/Users/Lydia/Documents/bh_project/A.hordeovulneris"

# Input files
DOG_R1="$PROJECT/canine_A.hordeovulneris_1.fastq.gz"
DOG_R2="$PROJECT/canine_A.hordeovulneris_2.fastq.gz"
CAT_R1="$PROJECT/feline_A.hordeovulneris_1.fastq.gz"
CAT_R2="$PROJECT/feline_A.hordeovulneris_2.fastq.gz"

# Run FastQC
fastqc \
    -o "$PROJECT/fastqc_results" \
    "$DOG_R1" \
    "$DOG_R2" \
    "$CAT_R1" \
    "$CAT_R2"
