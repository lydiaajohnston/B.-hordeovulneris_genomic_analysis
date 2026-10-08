# Define shell variables
PROJECT="/mnt/c/Users/Lydia/Documents/bh_project/A.hordeovulneris" 

# Identify and extract rRNA sequences from cat contigs
barrnap --threads 4 --outseq rrna_fasta_barrnap/cat_rRNA.fasta "$PROJECT/spades_cat/contigs.fasta"
# Select the identified 16S rRNA sequence
grep -A1 "NODE_46_length_5415_cov_116.688351:3687-5232" \
rrna_fasta_barrnap/cat_rRNA.fasta \
> rrna_fasta_barrnap/16s_cat_rRNA.fasta

# Identify and extract rRNA sequences from dog contigs
barrnap --threads 4 --outseq rrna_fasta_barrnap/dog_rRNA.fasta "$PROJECT/spades_dog/contigs.fasta"
# Select the identified full-length 16S rRNA sequence
grep -A1 "NODE_12_length_5320_cov_177.536106:3708-5252" \
rrna_fasta_barrnap/dog_rRNA.fasta \
> rrna_fasta_barrnap/16s_dog_rRNA.fasta
