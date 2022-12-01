# k-mer depth of Euphrasia samples
setwd("~/git_repos/2211-polyploidy-seminar/")
library(Tetmer)
?read.spectrum
Eang <- read.spectrum("data/EangDB.hist.no0", nam = "Eang", k=21, no0=T)
Earc <- read.spectrum("data/EarcgDB.hist.no0", nam = "Earc", k=21, no0=T)

tetmer(Eang)
# DIPLOID MODEL, AUTO FITTED
# k-mer length: 21
# monoploid k-mer cov: 54.5
# theta per k-mer: 0.0212
# theta per nucleotide: 0.00101
# non-rep GS (Mbp): 166.4
# bias (peak width): -1.9
#
# STARTING RANGES (MIN MAX)
# monoploid k-mer cov: 10 100
# log10 theta per k-mer: -2 0.6
# non-rep GS (Mbp): 6 9
# bias (peak width): -3 -1
# x range: 41 134

tetmer(Earc)
# ALLOTETRAPLOID MODEL, AUTO FITTED
# k-mer length: 21
# monoploid k-mer cov: 43.9
# theta per k-mer: 0.0213
# theta per nucleotide: 0.00101
# T: 50
# non-rep GS (Mbp): 178.8
# bias (peak width): -1.9
# diverg per k-mer: 1.0652
# diverg per nucleotide: 0.0507
#
# STARTING RANGES (MIN MAX)
# monoploid k-mer cov: 37 65
# log10 theta per k-mer: -2 0.6
# T: 0.001 100
# non-rep GS (Mbp): 6 9
# bias (peak width): -3 -1
# x range: 38 222
