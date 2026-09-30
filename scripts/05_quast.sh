#!/bin/bash 
# Define variables 
PROJECT="/mnt/c/Users/Lydia/Documents/bh_project/A.hordeovulneris" 
CAT_CONTIGS="$PROJECT/spades_cat/contigs.fasta"
DOG_CONTIGS="$PROJECT/spades_dog/contigs.fasta"
REF="$PROJECT/ref_genome/ncbi_dataset/data/GCF_001907235.1/GCF_001907235.1_ASM190723v1_genomic.fna"

# Run quast for cat and dog contigs against reference genome 
quast.py \
  -o "$PROJECT/quast_results" \
  -r "$REF" \
  "$CAT_CONTIGS" \
  "$DOG_CONTIGS"
