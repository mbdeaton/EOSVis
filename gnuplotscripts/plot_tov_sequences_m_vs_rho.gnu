# Plot TOV Sequences

load 'gnuplotscripts/linestyle_defs.gnu'

set title 'TOV Sequences from Cold, Beta-Eq Slices of Equations of State'
set xlabel 'central density (G=c=Msun=1)'
set x2label 'central density (g/cm^3)'
set ylabel 'gravitational mass (M_{sun})'
unset y2label

geoTocgs_rho=6.178e17
min_rho_geo=1e-4
max_rho_geo=8e-3
set xrange [min_rho_geo:max_rho_geo]
set x2range [min_rho_geo*geoTocgs_rho:max_rho_geo*geoTocgs_rho]
set xtics nomirror
set x2tics nomirror
set logscale x
set logscale x2

set yrange [0:3]
unset logscale y
unset y2tics
set ytics mirror

set key top left

p \
'maketovsequence-LS220_ColdTable.dat' u 1:2 w l ls 1 t 'LS 220',\
'maketovsequence-HShen_ColdTable.dat' u 1:2 w l ls 2 t 'H. Shen 2011',\
'maketovsequence-GShenNL3_ColdTable.dat' u 1:2 w l ls 3 t 'G. Shen NL3',\
'maketovsequence-GShenFSU21_ColdTable-warm-smooth.dat' u 1:2 w l ls 4 t 'G. Shen FSU 2.1',\
'maketovsequence-SFHo_ColdTable.dat' u 1:2 w l ls 5 t 'SFHo',\
'maketovsequence-SFHx_ColdTable.dat' u 1:2 w l ls 6 t 'SFHx',\
'maketovsequence-HempDD2_ColdTable.dat' u 1:2 w l ls 7 t 'Hempel DD2',\
1.2 lt 0 t '',\
1.4 lt 0 t ''
