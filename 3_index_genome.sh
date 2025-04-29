

#This script construct the FM-index for the reference genome, what is necessary to run bwa 


#Create directory for my output
mkdir ../data/bwa
mkdir ../data/bwa/index_genome


#Define variables
ref_gen=../data/ref_genome_kim/GCA_000512255.2_ASM51225v2_genomic.fna.gz	#Path from bin to my reference genome
prefix=../data/bwa/index_genome_kim/Capsicum_index_kim	#Index database sequences in the FASTA format
output=../data/bwa/index_genome_kim	  #Path to my output


#Run BWA with bwtsw algoritm, because **Capsicum** has a large genome
bwa index -p $prefix -a bwtsw $ref_gen > $output/Capsicum_index_kim
