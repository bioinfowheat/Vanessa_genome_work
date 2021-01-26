cd /mnt/griffin/chrwhe/Vanessa_cardui/genome/Vc_v1/

mkdir busco
cd busco

export BUSCO_CONFIG_FILE=/data/programs/busco-4.1.2/config/config.ini
# define datasets
genome=../Vcar.v1.scaf.fa
library=lepidoptera_odb10
outfile=Vcar.v1.scaf.fa_v_lepidoptera_odb10

# Run BUSCO
python3 /data/programs/busco-4.1.2/bin/busco -i $genome -l $library -m genome -o $outfile -c 30


more Vcar.v1.scaf.fa_v_lepidoptera_odb10/short_summary.specific.lepidoptera_odb10.Vcar.v1.scaf.fa_v_lepidoptera_odb10.txt
# BUSCO version is: 5.beta
# The lineage dataset is: lepidoptera_odb10 (Creation date: 2020-08-05, number of species: 16, number of BUSCOs: 5286)
# Summarized benchmarking in BUSCO notation for file /mnt/griffin/chrwhe/Vanessa_cardui/genome/Vc_v1/Vcar.v1.scaf.fa
# BUSCO was run in mode: genome

	  ***** Results: *****

	  C:97.2%[S:96.9%,D:0.3%],F:0.7%,M:2.1%,n:5286
	  5139    Complete BUSCOs (C)
	  5124    Complete and single-copy BUSCOs (S)
	  15      Complete and duplicated BUSCOs (D)
	  35      Fragmented BUSCOs (F)
	  112     Missing BUSCOs (M)
	  5286    Total BUSCO groups searched
