# align
# https://mummer4.github.io/manual/manual.html
# list reference genome first, then query genome
# Prefix=nucmer_aln_Pnap_v_Pmac000.1polish

# genomes
ln -s /mnt/griffin/chrwhe/Melitaea_cinxia_v2/Cinxia_v2_final_050918_sorted.fasta .
ln -s /mnt/griffin/chrwhe/Vanessa_cardui/genome/Vc_v1/Vcar.v1.scaf.fa .


Reference=Cinxia_v2_final_050918_sorted.fasta
/data/programs/scripts/AsmQC $Reference

-------------------------------
    AssemblyQC Result
-------------------------------
Contigs Generated :           31
Maximum Contig Length : 22,468,027
Minimum Contig Length : 7,906,052
Average Contig Length : 15,823,162.4 ± 3,804,975.0
Median Contig Length :  16,559,386.0
Total Contigs Length :  490,518,034
Total Number of Non-ATGC Characters :     15,775
Percentage of Non-ATGC Characters :        0.003
Contigs >= 100 bp :           31
Contigs >= 200 bp :           31
Contigs >= 500 bp :           31
Contigs >= 1 Kbp :            31
Contigs >= 10 Kbp :           31
Contigs >= 1 Mbp :            31
N50 value :     17,548,400
Generated using /mnt/griffin/chrwhe/Polygonia_calbum/synteny/Cinxia_v2_final_050918_sorted.fasta

Query=Vcar.v1.scaf.fa
/data/programs/scripts/AsmQC $Query

-------------------------------
    AssemblyQC Result
-------------------------------
Contigs Generated :          205
Maximum Contig Length : 15,944,461
Minimum Contig Length :    1,164
Average Contig Length : 2,075,188.9 ± 3,818,697.5
Median Contig Length :  29,939.0
Total Contigs Length :  425,413,715
Total Number of Non-ATGC Characters :          0
Percentage of Non-ATGC Characters :        0.000
Contigs >= 100 bp :          205
Contigs >= 200 bp :          205
Contigs >= 500 bp :          205
Contigs >= 1 Kbp :           205
Contigs >= 10 Kbp :          156
Contigs >= 1 Mbp :            72
N50 value :     10,297,021
Generated using /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/Vcar.v1.scaf.fa

# generating contig list


grep '>' $Query | sed 's/>//' > Vcar_contigs.txt
grep '>' $Reference | sed 's/>//' > Cinxia_contigs.txt

head *txt
==> Cinxia_contigs.txt <==
M01_B01_H21
M02_B04_H01a
M03_B15_H11
M04_B12_H19a

==> Vcar_contigs.txt <==
VCAR10001
VCAR10002
VCAR10003
VCAR10004
VCAR10005


Prefix=nucmer_aln_Mcin_v_Vcar
/data/programs/mummer-4.0.0beta2/nucmer --mum -c 100 -t 5 -p $Prefix $Reference $Query

# Options (default value in (), *required):
#      --mum                                Use anchor matches that are unique in both the reference and query (false)
#      --maxmatch                           Use all anchor matches regardless of their uniqueness (false)
#  -b, --breaklen=uint32                    Set the distance an alignment extension will attempt to extend poor scoring regions before giving up (200)
#  -c, --mincluster=uint32                  Sets the minimum length of a cluster of matches (65)
#  -D, --diagdiff=uint32                    Set the maximum diagonal difference between two adjacent anchors in a cluster (5)
#  -d, --diagfactor=double                  Set the maximum diagonal difference between two adjacent anchors in a cluster as a differential fraction of the gap length (0.12)
#      --noextend                           Do not perform cluster extension step (false)
#  -f, --forward                            Use only the forward strand of the Query sequences (false)
#  -g, --maxgap=uint32                      Set the maximum gap between two adjacent matches in a cluster (90)
#  -l, --minmatch=uint32                    Set the minimum length of a single exact match (20)
#  -L, --minalign=uint32                    Minimum length of an alignment, after clustering and extension (0)
#      --nooptimize                         No alignment score optimization, i.e. if an alignment extension reaches the end of a sequence, it will not backtrack to optimize the alignment score and instead terminate the alignment at the end of the sequence (false)
#  -r, --reverse                            Use only the reverse complement of the Query sequences (false)
#      --nosimplify                         Don't simplify alignments by removing shadowed clusters. Use this option when aligning a sequence to itself to look for repeats (false)
#  -p, --prefix=PREFIX                      Write output to PREFIX.delta (out)
#      --delta=PATH                         Output delta file to PATH (instead of PREFIX.delta)
#      --sam-short=PATH                     Output SAM file to PATH, short format
#      --sam-long=PATH                      Output SAM file to PATH, long format
#      --save=PREFIX                        Save suffix array to files starting with PREFIX
#      --load=PREFIX                        Load suffix array from file starting with PREFIX
#      --batch=BASES                        Proceed by batch of chunks of BASES from the reference
#  -t, --threads=NUM                        Use NUM threads (# of cores)
#  -U, --usage                              Usage
#  -h, --help                               This message
#      --full-help                          Detailed help
#  -V, --version                            Version

#### alternative alignment method allows for filtering before plotting, produces tsv-style output
# /data/programs/mummer-4.0.0beta2/delta-filter -h
#
# USAGE: /data/programs/mummer-4.0.0beta2/.libs/delta-filter  [options]  <deltafile>
#
# -1            1-to-1 alignment allowing for rearrangements
#               (intersection of -r and -q alignments)
# -g            1-to-1 global alignment not allowing rearrangements
# -h            Display help information
# -i float      Set the minimum alignment identity [0, 100], default 0
# -l int        Set the minimum alignment length, default 0
# -m            Many-to-many alignment allowing for rearrangements
#               (union of -r and -q alignments)
# -q            Maps each position of each query to its best hit in
#               the reference, allowing for reference overlaps
# -r            Maps each position of each reference to its best hit
#               in the query, allowing for query overlaps
# -u float      Set the minimum alignment uniqueness, i.e. percent of
#               the alignment matching to unique reference AND query
#               sequence [0, 100], default 0
# -o float      Set the maximum alignment overlap for -r and -q options
#               as a percent of the alignment length [0, 100], default 100
#
#   Reads a delta alignment file from either nucmer or promer and
# filters the alignments based on the command-line switches, leaving
# only the desired alignments which are output to stdout in the same
# delta format as the input. For multiple switches, order of operations
# is as follows: -i -l -u -q -r -g -m -1. If an alignment is excluded
# by a preceding operation, it will be ignored by the succeeding

# here we are filtering the delta alignment file for:
# best hit, 1 to 1 alignments in the two genomes, with a min align matching of 80%
# -q 	Maps each position of each query to its best hit in the reference, allowing for reference overlaps
# -r 	Maps each position of each reference to its best hit in the query, allowing for query overlaps
# -1 	1-to-1 alignment allowing for rearrangements (intersection of -r and -q alignments)
# -u 80	Set the minimum alignment uniqueness, i.e. percent of the alignment matching to unique reference AND query

/data/programs/mummer-4.0.0beta2/delta-filter -q -r -1 -u 80 $Prefix.delta > $Prefix.qr1_u80_filter.delta
# format to nice readable format
/data/programs/mummer-4.0.0beta2/show-coords -r -c -l $Prefix.qr1_u80_filter.delta > $Prefix.qr1_u80_filter.coords
# format output for circle plot R script
cat $Prefix.qr1_u80_filter.coords | sed 1,5d | tr -s ' ' | awk 'BEGIN {FS=" "; OFS=","} {;print $1,$2,$4,$5,$7,$8,$10,$12,$13,$18,$19}' > $Prefix.qr1_u80_filter.reformat.coords


# in the R script, there are futher filtering
# both scaffolds being aligned need to be longer than 1M bp
# block size of alignment needs to be longer than 200 bp and less then 90% (since we don't want active repetitive content, which has high than expected by divergence alignment)
