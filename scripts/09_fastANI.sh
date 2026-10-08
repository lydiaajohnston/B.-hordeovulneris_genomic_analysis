# Define variables 
PROJECT="/mnt/c/Users/Lydia/Documents/bh_project/A.hordeovulneris" 

# Create a text files with NCBI refrence data paths in it
cat > bh_refs.txt <<'EOF'
/mnt/c/Users/Lydia/Downloads/bh_dog_genomes/ncbi_dataset/data/GCF_001907235.1/GCF_001907235.1_ASM190723v1_genomic.fna
/mnt/c/Users/Lydia/Downloads/bh_dog_genomes/ncbi_dataset/data/GCF_003858495.1/GCF_003858495.1_ASM385849v1_genomic.fna
/mnt/c/Users/Lydia/Downloads/bh_dog_genomes/ncbi_dataset/data/GCF_003858505.1/GCF_003858505.1_ASM385850v1_genomic.fna
EOF

# Run fastANI on cat genome compared two the three NCBI refrence genomes 
fastANI \
-q "$PROJECT/spades_cat/contigs.fasta" \
--rl bh_refs.txt \
-o cat_vs_bh.txt \
-t 4

# Run fastANI on cat vs dog contig files 
fastANI \
-q "$PROJECT/spades_cat/contigs.fasta" \
-r "$PROJECT/spades_dog/contigs.fasta" \
-o fastANI_results/cat_vs_dog.txt \
-t 4

# Run fastANI on the dog vs three NCBI refrence genomes 
fastANI \
-q "$PROJECT/spades_dog/contigs.fasta" \
--rl bh_refs.txt \
-o fastANI_results/dog_vs_bh.txt \
-t 4
