#!/usr/local/bin/gnuplot -persist
set terminal postscript enhanced color
set output '| ps2pdf - wordcount_groupbykey_memory_nvme_alluxio_execution_time.pdf'
set style fill solid
set boxwidth 1 relative
set size ratio 0.5
#set boxwidth 1 relative
#set title "Execution Time of LineCounter based on Spark RDD Persistence Technology and Alluxio"
set yrange [0:350]
set ylabel "Execution Time (s)"
set xlabel "Dataset Size (GB)"
plot "wordcount_groupbykey_memory_nvme_alluxio_execution_time.txt" using 2 title "Memory w Serialized Java Objects" with linespoints lw 2,\
	"" using 3 title "Disk w NVMe" with linespoints lw 2,\
	"" using 4:xtic(1) title "Alluxio" with linespoints lw 2