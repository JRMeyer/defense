
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 0.5
set yrange [-6:22]
set xlabel "Language"
set ylabel "Improvement (% CER)
set style line 1 lc rgb "#4B96D1"
set style line 2 lc rgb "#4BD196"
set terminal eps fontscale 0.7 font "FreeSans"
set output "best-improvement.eps" 
plot "best-improvement.csv" using 1:4:xtic(2) with boxes ls 1 title "Tuned", "best-improvement.csv" using 1:3:xtic(2) with boxes ls 2 title "Frozen", 0 ls 1 title ""
