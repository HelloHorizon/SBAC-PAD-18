#!/usr/local/bin/gnuplot -persist
set terminal postscript enhanced color
set output '| ps2pdf - wordcount_groupbykey_RDD_Persistence_execution_time.pdf'
set style fill solid
set boxwidth 1 relative
set size ratio 0.5
#set boxwidth 1 relative
#set title "Execution Time of LineCounter based on Spark RDD Persistence Technology with Different Storage Technology"
set yrange [0:2]
set ylabel "Normalized Execution Time"
set xlabel "Dataset Size (GB)"
plot "wordcount_groupbykey_RDD_Persistence_execution_time.txt" using 2 title "Memory w Deserialized Java Objects" with linespoints lw 2,\
	"" using 3:xtic(1) title "Memory w Serialized Java Objects" with linespoints lw 2,\
	"" using 4 title "Disk w HDD" with linespoints lw 2,\
	"" using 5 title "Disk w NVMe" with linespoints lw 2