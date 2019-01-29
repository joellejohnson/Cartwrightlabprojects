folder='/storage/datasets/Tetrahymena_thermophila/ancestor_ges/fastq/Anc*'
DIR='Ancestors'
mkdir -p $DIR
for subfolder in $folder;
	do
	oldfilename=${subfolder##*/}
	oldfilename=${oldfilename}.R2.fastq
	#echo $subfolder "$DIR/$subfolder_R2.fastq";
	find $subfolder -name "*R2*" -exec cat {} \; >> "$DIR/$oldfilename"
done
