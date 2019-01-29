folder='/storage/datasets/Tetrahymena_thermophila/ancestor_ges/fastq/Anc*'
DIR='Ancestors'
mkdir -p $DIR
for subfolder in $folder;
	do
	oldfilename=${subfolder##*/}
	oldfilename=${oldfilename}.R1.fastq
	#echo $subfolder "$DIR/$subfolder_R1.fastq";
	find $subfolder -name "*R1*" -exec cat {} \; >> "$DIR/$oldfilename"
done
