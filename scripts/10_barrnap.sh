# Define shell variables
PROJECT="/mnt/c/Users/Lydia/Documents/bh_project/A.hordeovulneris" 

# Identify and extract rRNA sequences from cat contig
barrnap --threads 4 --outseq rrna_fasta_barrnap/cat_rRNA.fasta "$PROJECT/spades_cat/contigs.fasta"

# Save annotated rRNA gene locations in a GFF file
barrnap --threads 4 "$PROJECT/spades_cat/contigs.fasta" > rrna_fasta_barrnap/cat.gff

# Inspect predicted 16S rRNA gene locations
grep '16S_rRNA' rrna_fasta_barrnap/cat.gff

# Extract the selected 16S rRNA sequence into its own FASTA file
grep -A1 "NODE_46_length_5415_cov_116.688351:3687-5232" \
rrna_fasta_barrnap/cat_rRNA.fasta \
> rrna_fasta_barrnap/16s_cat_rRNA.fasta

# If multiple 16S sequences, extract all sesnible ones to the same FASTA file
grep -A1 -E "HEADER1|HEADER2|HEADER3" \
    rrna_fasta_barrnap/cat_B.felis_rRNA.fasta \
    > rrna_fasta_barrnap/16s_cat_B_felis_all.fasta

# Identify and extract rRNA sequences from dog contigs
barrnap --threads 4 --outseq rrna_fasta_barrnap/dog_rRNA.fasta "$PROJECT/spades_dog/contigs.fasta"

# Save annotated rRNA gene locations in a GFF file
barrnap --threads 4 "$PROJECT/spades_dog/contigs.fasta" > rrna_fasta_barrnap/dog.gff

# Inspect predicted 16S rRNA gene locations
grep '16S_rRNA' rrna_fasta_barrnap/dog.gff

# Extract the selected 16S rRNA sequence into its own FASTA file
grep -A1 "NODE_12_length_5320_cov_177.536106:3708-5252" \
rrna_fasta_barrnap/dog_rRNA.fasta \
> rrna_fasta_barrnap/16s_dog_rRNA.fasta
