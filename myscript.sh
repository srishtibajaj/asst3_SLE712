#!/bin/bash

# in case we need to reindex the db
#formatdb -p F -o T -i Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa 

# incorporate some mismatches
msbar -sequence 17.fa -count 350 -point 4 -block 0   -codon 0   -outseq mysample_mutated.fa

# run the blastn
blast2 -m 8 -p blastn -e 0.001 -d Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa -i mysample_mutated.fa 

--------------------------------------------------------------------------------------------------------------------------
(1) Formatdb is used to format the files in FASTA format to BLAST format. Also used to reindex a protein or nucleotide sequence.
(2) The function of msbar is to mutate a sequence.The output file is provided with the mutated sequences once the file(s) are read.
(3) BLAST is run to compare a query sequence with a database of sequences. BLASTn is run in this code.
(4) The default mysample.fa was converted to 17.fa as the protein sequence code provided was to be 17.
(5) The blast tests run were 100 for each mismatched site.
(6) Thee range of counts of mismatch sites was : 350 to 750 where the maximum amount of mismatches were found in 750.
