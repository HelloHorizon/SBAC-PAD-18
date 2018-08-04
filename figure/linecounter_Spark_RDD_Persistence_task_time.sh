#!/usr/local/bin/gnuplot -persist
set terminal postscript enhanced color
set output '| ps2pdf - linecounter_spark_rdd_persistence_task_time.pdf'
set style fill solid
set boxwidth 1 relative
set size ratio 0.5
#set boxwidth 1 relative
#set title "Average Task Time of LineCounter based on Spark RDD Persistence Technology with Different Storage Technology"
set yrange [0:5]
set ylabel "Normalized Average Task Time"
set xlabel "Dataset Size (GB)"
plot "linecounter_Spark_RDD_Persistence_task_time.txt" using 2 title "Memory w Deserialized Java Objects" with histogram lw 2 lc rgb "skyblue",\
	"" using 3:xtic(1) title "Memory w Serialized Java Objects" with histogram lw 2 lc rgb "sea-green",\
	"" using 4 title "Disk w HDD" with histogram lw 2 lc rgb "royalblue",\
	"" using 5 title "Disk w NVMe" with histogram lw 2 lc rgb "light-blue"