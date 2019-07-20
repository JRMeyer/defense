set boxwidth 0.5
unset key
set style fill solid 0.5
set yrange [-6:15]
set xlabel "Language"
set ylabel "Improvement (% CER)
set style line 1 lc rgb "#4B96D1"
set terminal eps fontscale 0.7 font "FreeSans"
set output "data-size.eps" 
plot "data-size.dat" using 1:3:xtic(2) with boxes ls 1, 0 ls 1
