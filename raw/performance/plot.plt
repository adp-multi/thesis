set terminal tikz size 13cm,10cm
set output 'plot.tex'
set datafile separator ","
set xlabel 'input length'
set ylabel 'time (s)'
set key bottom right
set key spacing 1.7 font ",9"
set termoption dashed
set style line 1 lt 1 lw 2 linecolor rgb "black"
set style line 2 lt 2 lw 2 linecolor rgb "black"
set style line 3 lt 3 lw 2 linecolor rgb "black"
set style line 4 lt 4 lw 2 linecolor rgb "black"
set style line 5 lt 5 lw 2 linecolor rgb "black"
set logscale y
plot 'bench100-1000cputime50xgnu.csv' index 1 using 1:2 with lines ls 1 title 'adp-multi', '' index 0 using 1:2 with lines ls 2 title 'Haskell-ADP', 'gapc-unger.csv' using 1:2 with lines ls 5 title 'GAP-C (Unger)', 'gapc-cyk.csv' using 1:2 with lines ls 4 title 'GAP-C (CYK)', 'bench100-1000cputime50xgnu.csv' index 2 using 1:2 with lines ls 3 title 'ADPfusion'
set output