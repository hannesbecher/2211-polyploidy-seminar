echo "Dumping..."
#kmc_tools transform EarcDB dump -s EarcDB.dump
#kmc_tools transform EangDB dump -s EangDB.dump

echo "Joining..."
#join -a 1 -a 2 -e 0 -o 0,1.2,2.2 EarcDB.dump EangDB.dump >  EarcEang.join #&& rm EarcDB.dump EangDB.dump

echo "Scaling and binning..."
awk -v f1=43.9 -v f2=54.5 '
function normBin(num, factor){
if(num/factor < 0.5)
return 0
return int(log(num/factor/0.5)/log(1.1)) + 1
}
{
print normBin($2, f1) " " normBin($3, f2)
}
' EarcEang.join | sort -T . | uniq -c > EarcEang.binCounts #&& rm EarcEang.join

echo "Removing leading whitespace..."
sed "s/^[ \t]*//" -i EarcEang.binCounts

echo "Done."
