#!/bin/bash
#PBS -N alineamiento    #Nombre del trabajo
#PBS -l nodes=1:ppn=8   #1 nodo, 8 núcleos (processors per node)
#PBS -l walltime=12:00:00   #Tiempo máximo de ejecución, en este caso 12 horas
#PBS -l mem=32gb    #Memoria total requerida, en este ejemplo, 32 GB de RAM
#PBS -o salida.log    #Archivos de salida
#PBS -e error.log   #Archivo de error
#PBS -V   #Exporta tus variables de entorno
#PBS -q long    #Usa la cola "long" (para trabajos largos)

#This script construct the FM-index for the reference genome, what is necessary to run bwa 


#Create directory for my output
mkdir ../data/2.Ref_genonome/index_genome


#Define variables
ref_gen=../data/2.Ref_genonome/assembly/Pcoccineus_703_v1.0.fa	#Path from bin to my reference genome
prefix=../data/2.Ref_genonome/index/Pcoccineus_index_unmasked  #Index database sequences in the FASTA format, importante que este descomprimido
output=../data/2.Ref_genonome/index  #Path to my output


#Run BWA with bwtsw algoritm, bwtsw está mejor optimizado para genomas eucariotas como plantas. is: no es óptimo para genomas eucariotas

bwa index -p $prefix -a bwtsw $ref_gen > $output
