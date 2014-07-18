# Plot P(rho) curves

load 'linestyle_defs.gnu'

set title 'Enthalpy vs. Density for Barotropic (Cold, Beta-Eq) Equations of State'
set xlabel 'density (G=c=Msun=1)'
set x2label 'density (g/cm^3)'
set ylabel 'enthalpy (G=c=Msun=1)'
unset y2label

geoTocgs_rho=5.178e17
min_rho_geo=1e-14
max_rho_geo=1e-2
set xrange [min_rho_geo:max_rho_geo]
set x2range [min_rho_geo*geoTocgs_rho:max_rho_geo*geoTocgs_rho]
set xtics nomirror
set x2tics nomirror
set logscale x
set logscale x2

min_h_geo=0.2
max_h_geo=8
set yrange [min_h_geo:max_h_geo]
unset y2tics
set ytics mirror
unset logscale y

set key top left

p \
'../ploteos-LS220_ColdTable.dat' u 1:5 w l ls 1 t 'LS 220',\
'../ploteos-HShen_ColdTable.dat' u 1:5 w l ls 2 t 'H. Shen 2011',\
'../ploteos-GShenNL3_ColdTable.dat' u 1:5 w l ls 3 t 'G. Shen NL3',\
'../ploteos-GShenFSU21_ColdTable-T0.1-smooth.dat' u 1:5 w l ls 4 t 'G. Shen FSU 2.1',\
'../ploteos-SFHo_ColdTable.dat' u 1:5 w l ls 5 t 'SFHo',\
'../ploteos-SFHx_ColdTable.dat' u 1:5 w l ls 6 t 'SFHx',\
'../ploteos-HempDD2_ColdTable.dat' u 1:5 w l ls 7 t 'Hempel DD2'
