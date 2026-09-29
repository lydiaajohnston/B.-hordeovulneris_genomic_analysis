#!/bin/bash
# Define Project directory 
PROJECT="/mnt/c/Users/Lydia/Documents/bh_project/A.hordeovulneris" 
# Define trimmed paired variable reads
DOG_TRIM_R1="$PROJECT/trimmed/canine_A.hordeovulneris_R1_trimmed.fastq"
DOG_TRIM_R2="$PROJECT/trimmed/canine_A.hordeovulneris_R2_trimmed.fastq"
CAT_TRIM_R1="$PROJECT/trimmed/feline_A.hordeovulneris_R1_trimmed.fastq"
CAT_TRIM_R2="$PROJECT/trimmed/feline_A.hordeovulneris_R2_trimmed.fastq"
# Run SPades assembler 
spades.py \
  -t 4 \
  -1 "$DOG_TRIM_R1" \
  -2 "$DOG_TRIM_R2" \
  -k 21,33,55,77 \
  -o "$PROJECT/spades_dog"
  
