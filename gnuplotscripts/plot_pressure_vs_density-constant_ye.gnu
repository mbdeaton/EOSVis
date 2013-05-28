# Plot P(rho) curves

load 'gnuplotscripts/linestyle_defs.gnu'

set title 'Pressure vs Density, Beta-Equilibrium vs Constant-Ye: LS220 & HShen'
set xlabel 'density (G=c=Msun=1)'
set ylabel 'pressure (G=c=Msun=1)'
min_rho_in_per_Msun_per_Msun=1e-7
max_rho_in_per_Msun_per_Msun=1e-2
set xrange [min_rho_in_per_Msun_per_Msun:max_rho_in_per_Msun_per_Msun]
set yrange [*:*]
set logscale x
set logscale y
set key top left

p \
'ploteos-LS220_ColdTable.dat' u 1:3 lt 1 w lp t 'LS220 beta-equilibrium',\
'ploteos-LS220_Tabulated-const_ye_0p1.dat' u 1:3 lt 1 w l t 'LS220 const-ye',\
'ploteos-LS220_Tabulated-const_ye_0p2.dat' u 1:3 lt 1 w l t '',\
'ploteos-LS220_Tabulated-const_ye_0p3.dat' u 1:3 lt 1 w l t '',\
'ploteos-LS220_Tabulated-const_ye_0p4.dat' u 1:3 lt 1 w l t '',\
\
'ploteos-HShen_ColdTable.dat' u 1:3 lt 2 w lp t 'HShen beta-equilibrium',\
'ploteos-HShen_Tabulated-const_ye_0p1.dat' u 1:3 lt 2 w l t 'HShen const-ye',\
'ploteos-HShen_Tabulated-const_ye_0p2.dat' u 1:3 lt 2 w l t '',\
'ploteos-HShen_Tabulated-const_ye_0p3.dat' u 1:3 lt 2 w l t '',\
'ploteos-HShen_Tabulated-const_ye_0p4.dat' u 1:3 lt 2 w l t ''

