#!/usr/local/bin/gnuplot -persist
set terminal postscript enhanced color
set output '| ps2pdf - wordcount_reducebykey_alluxio_hdfs_execution_time.pdf'
set style fill solid
set boxwidth 1 relative
set size ratio 0.5
#set boxwidth 1 relative
#set title "Execution Time of Line Counter based on Alluxio and HDFS"
set yrange [0:3.5]
set ylabel "Normalized Execution Time"
set xlabel "Dataset Size (GB)"
plot "wordcount_reducebykey_alluxio_hdfs_execution_time.txt" using 2:xtic(1) title "Alluxio" with histogram lw 2 lc rgb "skyblue",\
	"" using 3 title "HDFS with HDD" with histogram lw 2 lc rgb "sea-green"