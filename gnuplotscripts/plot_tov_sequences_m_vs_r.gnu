# Plot TOV Sequences

load 'gnuplotscripts/linestyle_defs.gnu'

set title 'TOV Sequences from Cold Slices of Various Equations of State'
set xlabel 'radius (km)'
set ylabel 'gravitational mass (Msun)'
km_per_Msun=1.47
max_r_in_km=19
set xrange [*:max_r_in_km]
set yrange [0:3]
unset logscale x
unset logscale y
set key top right

p \
'maketovsequence-LS220_ColdTable.dat' u ($3*km_per_Msun):2 w l ls 1 t 'LS 220',\
'maketovsequence-HShen_ColdTable.dat' u ($3*km_per_Msun):2 w l ls 2 t 'H. Shen 2011',\
'maketovsequence-GShenNL3_ColdTable.dat' u ($3*km_per_Msun):2 w l ls 3 t 'G. Shen NL3',\
'maketovsequence-GShenFSU21_ColdTable.dat' u ($3*km_per_Msun):2 w l ls 4 t 'G. Shen FSU 2.1',\
'maketovsequence-SFHo_ColdTable.dat' u ($3*km_per_Msun):2 w l ls 5 t 'SFHo',\
'maketovsequence-SFHx_ColdTable.dat' u ($3*km_per_Msun):2 w l ls 6 t 'SFHx',\
'maketovsequence-HempDD2_ColdTable.dat' u ($3*km_per_Msun):2 w l ls 7 t 'Hempel DD2'
