# Plot P(rho) curves

load 'gnuplotscripts/linestyle_defs.gnu'

set title 'Pressure vs. Density for Barotropic EOSs'
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
'ploteos-LS220_ColdTable.dat' u 1:3 w l ls 1 t 'LS 220',\
'ploteos-HShen_ColdTable.dat' u 1:3 w l ls 2 t 'H. Shen 2011',\
'ploteos-GShenNL3_ColdTable.dat' u 1:3 w l ls 3 t 'G. Shen NL3',\
'ploteos-GShenFSU21_ColdTable-warm-smooth.dat' u 1:3 w l ls 4 t 'G. Shen FSU 2.1',\
'ploteos-SFHo_ColdTable.dat' u 1:3 w l ls 5 t 'SFHo',\
'ploteos-SFHx_ColdTable.dat' u 1:3 w l ls 6 t 'SFHx',\
'ploteos-HempDD2_ColdTable.dat' u 1:3 w l ls 7 t 'Hempel DD2'
