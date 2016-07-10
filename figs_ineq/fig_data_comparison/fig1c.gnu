unset grid
set multiplot
set ytics nomirror
unset y2tics
set size 0.6, 0.7
set origin 0,0
unset y2label
set key top right
set key font ",20"
set key spacing 1.5
set xlabel 'year' font 'Times, 24'
set ylabel 'b' font 'Symbol, 24'
set y2label 'velocity of money' font 'Times, 24'
set y2tics 0,1,4
set xtics auto
set ytics auto
set key right
set y2range [0:3.6]
set yrange [1:2.1]
p[1960:2015]'mzm_m1_m2_beta.d' u 1:2 axes x1y2 tit 'MZMV' w lp pt 5 ps 1.5, 'fit.d' u 1:3:(3*$5) axes x1y1 tit 'b' w e lw 2
set origin 0.57, 0
set size 0.44, 0.7
set key top right
set y2label 'liquitidy' font 'Times, 24'
unset ylabel
set y2tics 0,0.2,1 
set ytics 0,1,4
set xtics 0.8,0.2,2
set xlabel 'b' font 'Symbol, 24'
set yrange [0:3.6]
set y2range [0:0.7]
set key bottom
p[1:]'mzm_m1_m2_beta.d'u 5:($1>1960 ? $2 : 1/0) axes x1y1 tit 'MZMV' w lp pt 5 ps 1.5,'beta_VS_Velocity.dat' axes x1y2 tit 'Model' w l lt 3 lw 3
set origin
set size
set ytics
set xtics auto
unset y2tics
set origin 0.08, 0.07
set size 0.31, 0.32
set auto
set key font ",12"
set key spacing 1
unset xtic
unset ytic
unset xlab
unset ylab
#set xlab 'log(fract. population)' font 'Times, 14' 
#set ylab 'log(fract. wealth)' font 'Times, 14'
unset y2lab
p[-9.5:-1.5]'fort.12' in 63 u 3:4 tit '1980'w p pt 5 ps 1.5, 0.72992+0.471903*x not lt 0 lw 2,'fort.12' in 73 u 3:4 tit '1990'w p pt 5 ps 1.5,0.493845+0.385035*x not lt 0 lw 2,'fort.12' in 83 u 3:4 tit '2000'w p pt 5 ps 1.5,0.436805+0.331716*x not lt 0 lw 2,'fort.12' in 93 u 3:4 tit '2010' w p pt 5 ps 1.5,0.369441+0.280718*x not lt 0 lw 2
set origin
set size
set xtic auto
set ytic auto
unset multiplot
