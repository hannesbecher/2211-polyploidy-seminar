# Euphrasia anglica, diploid, SRR16958224
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR169/024/SRR16958224/SRR16958224_1.fastq.gz
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR169/024/SRR16958224/SRR16958224_2.fastq.gz

# Euphrasia arctica, tetraploid, SRR18888510
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR188/010/SRR18888510/SRR18888510_1.fastq.gz
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR188/010/SRR18888510/SRR18888510_2.fastq.gz


ln -s SRR16958224_1.fastq.gz EangF.fq.gz
ln -s SRR16958224_2.fastq.gz EangR.fq.gz
ln -s SRR18888510_1.fastq.gz EarcF.fq.gz
ln -s SRR18888510_2.fastq.gz EarcR.fq.gz

ls Eang* > EangFiles
ls Earc* > EarcFiles
