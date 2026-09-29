#!/bin/bash
# Define Project directory 
PROJECT="/mnt/c/Users/Lydia/Documents/bh_project/A.hordeovulneris" 
# Define trimmed paired variable reads
DOG_TRIM_R1="$PROJECT/trimmed/canine_A.hordeovulneris_R1_trimmed.fastq"
DOG_TRIM_R2="$PROJECT/trimmed/canine_A.hordeovulneris_R2_trimmed.fastq"
CAT_TRIM_R1="$PROJECT/trimmed/feline_A.hordeovulneris_R1_trimmed.fastq"
CAT_TRIM_R2="$PROJECT/trimmed/feline_A.hordeovulneris_R2_trimmed.fastq"
# Run SPades assembler on Dog reads
spades.py \
  -t 4 \
  -m 8 \
  -1 "$DOG_TRIM_R1" \
  -2 "$DOG_TRIM_R2" \
  -o "$PROJECT/spades_dog"
  
# Run SPades assembler on Cat reads 
spades.py \
  -t 4 \
  -m 8 \
  -1 "$CAT_TRIM_R1" \
  -2 "$CAT_TRIM_R2" \
  -o "$PROJECT/spades_cat"
