#!/bin/bash
# Project directory
PROJECT="/mnt/c/Users/Lydia/Documents/bh_project/A.hordeovulneris"
# Run FastQC on trimmed canine reads
 fastqc \
  -o "$PROJECT/fastqc_trimmed" \
  "$PROJECT/trimmed/canine_A.hordeovulneris_R1_trimmed.fastq" \
  "$PROJECT/trimmed/canine_A.hordeovulneris_R2_trimmed.fastq"
