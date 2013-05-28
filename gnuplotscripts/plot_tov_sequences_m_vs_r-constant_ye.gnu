# Plot TOV Sequences of Constant-Ye Slices

load 'gnuplotscripts/linestyle_defs.gnu'

set title 'TOV Sequences, Beta-Equilibrium vs Constant-Ye: LS220 & HShen'
set xlabel 'radius (km)'
set ylabel 'gravitational mass (Msun)'
km_per_Msun=1.47
min_r_in_km=9
max_r_in_km=19
set xrange [min_r_in_km:max_r_in_km]
set yrange [0:2.5]
unset logscale x
unset logscale y
set key top right

p \
'maketovsequence-LS220_ColdTable.dat' u ($3*km_per_Msun):2 lt 1 w lp t 'LS220 beta-equilibrium',\
'maketovsequence-LS220_Tabulated-const_ye_0p1.dat' u ($3*km_per_Msun):2 lt 1 w l t 'LS220 const-ye',\
'maketovsequence-LS220_Tabulated-const_ye_0p2.dat' u ($3*km_per_Msun):2 lt 1 w l t '',\
'maketovsequence-LS220_Tabulated-const_ye_0p3.dat' u ($3*km_per_Msun):2 lt 1 w l t '',\
'maketovsequence-LS220_Tabulated-const_ye_0p4.dat' u ($3*km_per_Msun):2 lt 1 w l t '',\
\
'maketovsequence-HShen_ColdTable.dat' u ($3*km_per_Msun):2 lt 2 w lp t 'HShen beta-equilibrium',\
'maketovsequence-HShen_Tabulated-const_ye_0p1.dat' u ($3*km_per_Msun):2 lt 2 w l t 'HShen const-ye',\
'maketovsequence-HShen_Tabulated-const_ye_0p2.dat' u ($3*km_per_Msun):2 lt 2 w l t '',\
'maketovsequence-HShen_Tabulated-const_ye_0p3.dat' u ($3*km_per_Msun):2 lt 2 w l t '',\
'maketovsequence-HShen_Tabulated-const_ye_0p4.dat' u ($3*km_per_Msun):2 lt 2 w l t ''
