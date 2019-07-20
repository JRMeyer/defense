set boxwidth 0.75
unset key
set style fill solid 0.5
set yrange [-6:10]
set xrange [0:6]
set xtics (1,2,3,4,5)
set xlabel "Number of Layers Transferred"
set ylabel "Improvement (% CER)"
set style line 1 lc rgb "#4B96D1"
set style line 2 lc rgb "#4BD196"
set terminal eps fontscale 0.7 font "FreeSans"
set output "relative-improvement.eps" 
plot "relative-improvement.dat" using 1:2:4 with boxerrorbars ls 1, '' using 1:2:4 with boxerrorbars ls 1, 0 

set output "relative-improvement-frozen.eps" 
plot "relative-improvement-frozen.dat" using 1:2:4 with boxerrorbars ls 2, '' using 1:2:4 with boxerrorbars ls 2, 0 

set output "relative-improvement-tuned.eps" 
plot "relative-improvement-tuned.dat" using 1:2:4 with boxerrorbars ls 1, '' using 1:2:4 with boxerrorbars ls 1, 0 
