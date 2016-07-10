unset grid
set multiplot
set ytics
unset y2tics
set size 0.5, 0.7
set origin 0,0
unset y2label
set xlabel 'year' font 'Times, 24'
set ylabel 'b' font 'Symbol, 24'
p[1960:2015][1.1:2.1]'fit.d' u 1:3:(3*$5) not w e lw 2
set origin 0.5, 0
set key top right
unset ylabel
set y2label 'velocity of money' font 'Times, 24'
set y2tics
unset ytics
p[1960:2015][1.25:3.55]'mzm_m1_m2_beta.d'u 1:2 tit 'MZM' w lp pt 4,'mzm_m1_m2_beta.d'u 1:4 tit 'M2' w lp pt 5
set origin
set size
set ytics
unset y2tics
unset multiplot
