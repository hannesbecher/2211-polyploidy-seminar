# module load anaconda
# conda create -n kmc -c bioconda kmc
# source activate kmc

# Euphrasia anglica 2x ####
# Generate k-mer data base
#kmc -t20 -k21 -cs15000000 @EangFiles EangDB .
# Generate k-mer spectrum
#kmc_tools transform EangDB histogram EangDB.hist -cx150000000
#remove lines with zeros from histogram
#awk '{ if( $2 != 0 ){ print $0 } }' EangDB.hist > EangDB.hist.no0
#rm EangDB.hist

# Euphrasia arctica 4x ####
# Generate k-mer data base
kmc -t20 -k21 -cs15000000 @EarcFiles EarcDB .
# Generate k-mer spectrum
kmc_tools transform EarcDB histogram EarcDB.hist -cx150000000
#remove lines with zeros from histogram
awk '{ if( $2 != 0 ){ print $0 } }' EarcDB.hist > EarcgDB.hist.no0 
rm EarcDB.hist


kmc -t20 -k21 -cs15000000 @EangFiles EangDB .
