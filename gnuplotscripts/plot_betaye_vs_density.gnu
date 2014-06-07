# Plot Ye(rho) curves for beta-equilibrium

load 'linestyle_defs.gnu'

set title 'Beta Equilibrium Ye vs. Density for Cold Equations of State'
set xlabel 'density (G=c=Msun=1)'
set x2label 'density (g/cm^3)'
set ylabel 'Ye'
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

min_ye=0
max_ye=0.6
set yrange [min_ye:max_ye]
unset y2tics
set ytics mirror
unset logscale y

set key top left

p \
'../../LS220_ColdBetaYe-T0.1.dat' u 1:2 w l ls 1 t 'LS 220',\
'../../HShen_ColdBetaYe-T0.1.dat' u 1:2 w l ls 2 t 'H. Shen 2011',\
'../../GShenNL3_ColdBetaYe-T0.1.dat' u 1:2 w l ls 3 t 'G. Shen NL3',\
'../../GShenFSU21_ColdBetaYe-T0.1.dat' u 1:2 w l ls 4 t 'G. Shen FSU 2.1',\
'../../SFHo_ColdBetaYe-T0.1.dat' u 1:2 w l ls 5 t 'SFHo',\
'../../SFHx_ColdBetaYe-T0.1.dat' u 1:2 w l ls 6 t 'SFHx',\
'../../HempDD2_ColdBetaYe-T0.1.dat' u 1:2 w l ls 7 t 'Hempel DD2'
