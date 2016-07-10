unset grid
set multiplot
set xlabel 'year' font 'Times, 24'
set ylabel 'b' font 'Symbol, 24'
p[1915:2015][1.2:2]'fit.d' u 1:3 not w lp pt 5 ps 1.4
set origin 0.32, 0.1
set size 0.45, 0.45
set xlab 'log(fract. population)' font 'Times, 18' 
set ylab 'log(fract. wealth)' font 'Times, 18'
p'fort.12' in 63 u 3:4 tit '1980'w p pt 5 ps 2, 0.72992+0.471903*x not lt 0,'fort.12' in 73 u 3:4 tit '1990'w p pt 5 ps 2,0.493845+0.385035*x not lt 0,'fort.12' in 83 u 3:4 tit '2000'w p pt 5 ps 2,0.436805+0.331716*x not lt 0,'fort.12' in 93 u 3:4 tit '2010' w p pt 5 ps 2,0.369441+0.280718*x not lt 0
set origin
set size
unset multiplot
