#Define variables 
PROJECT="/mnt/c/Users/Lydia/Documents/bh_project/A.hordeovulneris" 

# Run Busco for cat contig reads 
busco \
  -i "$PROJECT/spades_cat/contigs.fasta" \ 
  -m genome \ 
  -l actinomycetaceae_odb12.2 \ 
  -c 4 \ 
  -o busco_cat_result

# Run busco for dog contigs 
busco \
  -i "$PROJECT/spades_dog/contigs.fasta" \ 
  -m genome \ 
  -l actinomycetaceae_odb12.2 \ 0
  -c 4 \ 
  -o busco_dog_result
