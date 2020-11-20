
# genomes
ln -s /mnt/griffin/chrwhe/Melitaea_cinxia_v2/Cinxia_v2_final_050918_sorted.fasta cinxiav2.fasta
ln -s /mnt/griffin/chrwhe/Vanessa_cardui/genome/Vc_v1/Vcar.v1.scaf.fa Vcar.v1.scaf.fasta

grep '>' Cinxia_v2_final_050918_sorted.fasta | more
# only 31 chromosomes.
grep '>' Cinxia_v2_final_050918_sorted.fasta
>M01_B01_H21
>M02_B04_H01a
>M03_B15_H11
>M04_B12_H19a
>M05_B06_H03
>M06_B05_H10a
>M07_B18_H16
>M08_B17_H15
>M09_B10_H20a
>M10_B09_H06a
>M11_B22_H13a
>M12_B11a_H07a
>M13_B08_H12a
>M14_B23a_H18a
>M15_B13_H17a
>M16_B19_H14
>M17_B03_H05
>M18_B25_H08
>M19_B21_H04
>M20_B07_H09
>M21_B16_H02
>M22_B28_H10b
>M23_B26_H19b
>M24_B27_H18b
>M25_B20_H12b
>M26_B14_H13b
>M27_B24a_H01b
>M28_B02_H07b
>M29_B24b_H17b
>M30_B23b_H20b
>M31_B11b_H06b

/data/programs/scripts/AsmQC Cinxia_v2_final_050918_sorted.fasta
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
Generated using /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/Cinxia_v2_final_050918_sorted.fasta

/data/programs/scripts/AsmQC Vcar.v1.scaf.fa
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
Generated using /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/Vcar.v1.scaf.fa

reference=cinxiav2.fasta
query=Vcar.v1.scaf.fasta



# used alignment from the genome alignment for the figure
# nucmer_aln_Mcin_v_Vcar.qr1_u80_filter
python3 /data/programs/RagTag/ragtag_scaffold.py $reference $query -o nucmer_aln_Mcin_v_Vcar.qr1_u80_filter -t 10 --aligner nucmer
# Fri Nov 20 00:46:09 2020 --- RagTag v1.0.1
# Fri Nov 20 00:46:09 2020 --- CMD: /data/programs/RagTag/ragtag_scaffold.py cinxiav2.fasta Vcar.v1.scaf.fasta -o nucmer_aln_Mcin_v_Vcar.qr1_u80_filter -t 10 --aligner nucmer
# Fri Nov 20 00:46:09 2020 --- WARNING: Without '-u' invoked, some component/object AGP pairs might share the same ID. Some external programs/databases don't like this. To ensure valid AGP format, use '-u'.
# Fri Nov 20 00:46:09 2020 --- Mapping the query genome to the reference genome
# Fri Nov 20 00:46:09 2020 --- Retaining pre-existing file: /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/query_against_ref.delta
# Fri Nov 20 00:46:09 2020 --- Running: ragtag_delta2paf.py /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/query_against_ref.delta > /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/query_against_ref.paf
# Fri Nov 20 00:46:11 2020 --- Finished running : ragtag_delta2paf.py /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/query_against_ref.delta > /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/query_against_ref.paf
# Fri Nov 20 00:46:11 2020 --- Reading whole genome alignments
# Fri Nov 20 00:46:11 2020 --- Filtering and merging alignments
# Fri Nov 20 00:46:12 2020 --- Ordering and orienting query sequences
# Fri Nov 20 00:46:12 2020 --- Writing scaffolds
# Fri Nov 20 00:46:12 2020 --- Writing: /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/ragtag.scaffolds.agp
# Fri Nov 20 00:46:15 2020 --- Running: ragtag_agp2fasta.py /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/ragtag.scaffolds.agp /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/Vcar.v1.scaf.fasta > /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/ragtag.scaffolds.fasta
# Fri Nov 20 00:46:22 2020 --- Finished running : ragtag_agp2fasta.py /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/ragtag.scaffolds.agp /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/Vcar.v1.scaf.fasta > /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/ragtag.scaffolds.fasta
# Fri Nov 20 00:46:22 2020 --- Running: ragtag_stats.py /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/ragtag.scaffolds.agp /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/ragtag.confidence.txt > /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/ragtag.scaffolds.stats
# Fri Nov 20 00:46:22 2020 --- Finished running : ragtag_stats.py /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/ragtag.scaffolds.agp /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/ragtag.confidence.txt > /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/ragtag.scaffolds.stats
# Fri Nov 20 00:46:22 2020 --- Goodbye


# make the new genome
python3 /data/programs/RagTag/ragtag_agp2fasta.py ragtag.scaffolds.agp ../Vcar.v1.scaf.fasta > Vcar.v1.scaf.pseudochromosome.fa

/data/programs/scripts/AsmQC Vcar.v1.scaf.pseudochromosome.fa
-------------------------------
    AssemblyQC Result
-------------------------------
Contigs Generated :          143
Maximum Contig Length : 19,941,230
Minimum Contig Length :    1,164
Average Contig Length : 2,974,964.4 ± 5,815,520.4
Median Contig Length :  26,118.0
Total Contigs Length :  425,419,915
Total Number of Non-ATGC Characters :      6,200
Percentage of Non-ATGC Characters :        0.001
Contigs >= 100 bp :          143
Contigs >= 200 bp :          143
Contigs >= 500 bp :          143
Contigs >= 1 Kbp :           143
Contigs >= 10 Kbp :           95
Contigs >= 1 Mbp :            31
N50 value :     15,350,044
Generated using /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/Vcar.v1.scaf.pseudochromosome.fa

grep '>' Vcar.v1.scaf.pseudochromosome.fa | head
>M01_B01_H21_RagTag
>M02_B04_H01a_RagTag
>M03_B15_H11_RagTag
>M04_B12_H19a_RagTag
>M05_B06_H03_RagTag
>M06_B05_H10a_RagTag
>M07_B18_H16_RagTag
>M08_B17_H15_RagTag
>M09_B10_H20a_RagTag
>M10_B09_H06a_RagTag

##
# assessing new AGP
# note that in the plot for the main paper, we only plotted scaffolds > 1M bp,
# so some of these smaller assignments are not plotted. But, for the first 6, these are
# exactly correct.

column -t *agp | more
##                    agp-version  2.1
#                     AGP          created   by  RagTag
M01_B01_H21_RagTag    1            3264095   1   W       VCAR10109  1         3264095   -
M01_B01_H21_RagTag    3264096      3264195   2   U       100        scaffold  yes       align_genus
M01_B01_H21_RagTag    3264196      15150070  3   W       VCAR10014  1         11885875  +
M01_B01_H21_RagTag    15150071     15150170  4   U       100        scaffold  yes       align_genus
M01_B01_H21_RagTag    15150171     16107182  5   W       VCAR10204  1         957012    -
M01_B01_H21_RagTag    16107183     16107282  6   U       100        scaffold  yes       align_genus
M01_B01_H21_RagTag    16107283     17836784  7   W       VCAR10058  1         1729502   -
M02_B04_H01a_RagTag   1            4764127   1   W       VCAR10150  1         4764127   +
M02_B04_H01a_RagTag   4764128      4764227   2   U       100        scaffold  yes       align_genus
M02_B04_H01a_RagTag   4764228      19941230  3   W       VCAR10039  1         15177003  -
M03_B15_H11_RagTag    1            5426801   1   W       VCAR10166  1         5426801   +
M03_B15_H11_RagTag    5426802      5426901   2   U       100        scaffold  yes       align_genus
M03_B15_H11_RagTag    5426902      6676558   3   W       VCAR10018  1         1249657   -
M03_B15_H11_RagTag    6676559      6676658   4   U       100        scaffold  yes       align_genus
M03_B15_H11_RagTag    6676659      7250424   5   W       VCAR10174  1         573766    -
M03_B15_H11_RagTag    7250425      7250524   6   U       100        scaffold  yes       align_genus
M03_B15_H11_RagTag    7250525      11144986  7   W       VCAR10129  1         3894462   -
M03_B15_H11_RagTag    11144987     11145086  8   U       100        scaffold  yes       align_genus
M03_B15_H11_RagTag    11145087     14407006  9   W       VCAR10108  1         3261920   -
M03_B15_H11_RagTag    14407007     14407106  10  U       100        scaffold  yes       align_genus
M03_B15_H11_RagTag    14407107     18720624  11  W       VCAR10138  1         4313518   +
M04_B12_H19a_RagTag   1            15356505  1   W       VCAR10044  1         15356505  +
M05_B06_H03_RagTag    1            15944461  1   W       VCAR10047  1         15944461  -
M06_B05_H10a_RagTag   1            152496    1   W       VCAR10041  1         152496    +
M06_B05_H10a_RagTag   152497       152596    2   U       100        scaffold  yes       align_genus
M06_B05_H10a_RagTag   152597       13370094  3   W       VCAR10026  1         13217498  -
M06_B05_H10a_RagTag   13370095     13370194  4   U       100        scaffold  yes       align_genus
M06_B05_H10a_RagTag   13370195     14863296  5   W       VCAR10037  1         1493102   -
M06_B05_H10a_RagTag   14863297     14863396  6   U       100        scaffold  yes       align_genus
M06_B05_H10a_RagTag   14863397     16462139  7   W       VCAR10048  1         1598743   +
M07_B18_H16_RagTag    1            10297021  1   W       VCAR10002  1         10297021  +
M07_B18_H16_RagTag    10297022     10297121  2   U       100        scaffold  yes       align_genus
M07_B18_H16_RagTag    10297122     12866344  3   W       VCAR10086  1         2569223   -
M07_B18_H16_RagTag    12866345     12866444  4   U       100        scaffold  yes       align_genus
M07_B18_H16_RagTag    12866445     14059062  5   W       VCAR10015  1         1192618   +
M08_B17_H15_RagTag    1            417236    1   W       VCAR10135  1         417236    -
M08_B17_H15_RagTag    417237       417336    2   U       100        scaffold  yes       align_genus
M08_B17_H15_RagTag    417337       3663856   3   W       VCAR10107  1         3246520   -
M08_B17_H15_RagTag    3663857      3663956   4   U       100        scaffold  yes       align_genus
M08_B17_H15_RagTag    3663957      15542702  5   W       VCAR10013  1         11878746  +

cp ragtag.scaffolds.agp Vcar.v1.pseudochromosomal.agp

# transfer the GFF over
python3 /data/programs/RagTag/ragtag.py updategff /mnt/griffin/chrwhe/Vanessa_cardui/genome/Vc_v1/Vcard.maker.gene.gff /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/ragtag.scaffolds.agp > Vcar.v1.scaf.pseudochromosome.gff
Fri Nov 20 11:04:44 2020 --- RagTag v1.0.1
Fri Nov 20 11:04:44 2020 --- CMD: /usr/local/bin/ragtag_update_gff.py /mnt/griffin/chrwhe/Vanessa_cardui/genome/Vc_v1/Vcard.maker.gene.gff /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter/ragtag.scaffolds.agp
Fri Nov 20 11:04:47 2020 --- Goodbye


# compressing files
cd /mnt/griffin/chrwhe/Vanessa_cardui/genome/synteny/ragtag/nucmer_aln_Mcin_v_Vcar.qr1_u80_filter
pigz Vcar.v1.scaf.pseudochromosome.fa
pigz Vcar.v1.scaf.pseudochromosome.gff
pigz Vcar.v1.pseudochromosomal.agp

zip pseudochromosomal.zip *gz


#
