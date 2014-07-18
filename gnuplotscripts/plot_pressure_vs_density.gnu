# Plot P(rho) curves

load 'linestyle_defs.gnu'

set title 'Pressure vs. Density for Barotropic (Cold, Beta-Eq) Equations of State'
set xlabel 'density (G=c=Msun=1)'
set x2label 'density (g/cm^3)'
set ylabel 'pressure (G=c=Msun=1)'
set y2label 'pressure (barye)'

geoTocgs_rho=6.178e17
min_rho_geo=1e-7
max_rho_geo=1e-2
set xrange [min_rho_geo:max_rho_geo]
set x2range [min_rho_geo*geoTocgs_rho:max_rho_geo*geoTocgs_rho]
set xtics nomirror
set x2tics nomirror
set logscale x
set logscale x2

geoTocgs_p=5.553e38
min_p_geo=1e-10
max_p_geo=1e-1
set yrange [min_p_geo:max_p_geo]
set y2range [min_p_geo*geoTocgs_p:max_p_geo*geoTocgs_p]
set ytics nomirror
set y2tics nomirror
set logscale y
set logscale y2

set key top left

p \
'../ploteos-LS220_ColdTable.dat' u 1:3 w l ls 1 t 'LS 220',\
'../ploteos-HShen_ColdTable.dat' u 1:3 w l ls 2 t 'H. Shen 2011',\
'../ploteos-GShenNL3_ColdTable.dat' u 1:3 w l ls 3 t 'G. Shen NL3',\
'../ploteos-GShenFSU21_ColdTable-T0.1-smooth.dat' u 1:3 w l ls 4 t 'G. Shen FSU 2.1',\
'../ploteos-SFHo_ColdTable.dat' u 1:3 w l ls 5 t 'SFHo',\
'../ploteos-SFHx_ColdTable.dat' u 1:3 w l ls 6 t 'SFHx',\
'../ploteos-HempDD2_ColdTable.dat' u 1:3 w l ls 7 t 'Hempel DD2'
