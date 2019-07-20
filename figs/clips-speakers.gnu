set boxwidth 0.5
unset key
set style fill solid 0.5
#set yrange [-6:15]
set yrange [0:70000]
set ytics ("10" 10000, "20" 20000, "30" 30000, "40" 40000, "50" 50000, "60" 60000, "70" 70000)
set xlabel "Language"
set style line 1 lc rgb "#4B96D1"
set style line 2 lc rgb "#4BD196"
set terminal eps fontscale 0.7 font "FreeSans"
set ylabel "Size (# thousand clips in training)"
set output "clips-size.eps" 
plot "clips-speakers.dat" using 1:3:xtic(2) with boxes ls 1
set yrange [0:350]
set ytics auto
set ylabel "Size (# speakers in training)"
set output "speakers-size.eps" 
plot "clips-speakers.dat" using 1:4:xtic(2) with boxes ls 1
