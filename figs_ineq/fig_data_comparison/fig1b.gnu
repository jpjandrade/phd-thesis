unset grid
set multiplot
set ytics nomirror
unset y2tics
set size 0.6, 0.7
set origin 0,0
unset y2label
set xlabel 'year' font 'Times, 24'
set ylabel 'b' font 'Symbol, 24'
set y2label 'velocity of money' font 'Times, 24'
set y2tics 0,1,4
set xtics auto
set ytics auto
set key right
set y2range [0:3.6]
set yrange [1:2.1]
p[1960:2015]'mzm_m1_m2_beta.d' u 1:2 axes x1y2 tit 'MZMV' w lp pt 5 ps 1.5,'mzm_m1_m2_beta.d' u 1:4 axes x1y2 tit 'M2V' w lp pt 6 ps 1.5,'fit.d' u 1:3:(3*$5) axes x1y1 tit 'b' w e lw 2
set origin 0.57, 0
set size 0.44, 0.7
set key top right
set y2label 'liquitidy' font 'Times, 24'
unset ylabel
set y2tics auto 
set ytics 0,1,4
set xtics 0.8,0.2,2
set xlabel 'b' font 'Symbol, 24'
set yrange [0:3.6]
set y2range [0:0.7]
set key left
p[1:]'mzm_m1_m2_beta.d'u 5:($1>1960 ? $2 : 1/0) axes x1y1 tit 'MZMV' w lp pt 5 ps 1.5,'mzm_m1_m2_beta.d'u 5:($1>1960 ? $4 : 1/0) axes x1y1  tit 'M2V' w lp pt 6 ps 1.5,'beta_VS_Velocity.dat' axes x1y2 tit 'Model' w l lw 2
set origin
set size
set ytics
set xtics auto
unset y2tics
unset multiplot
