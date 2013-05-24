# Plot TOV Sequences

set title 'TOV Sequences from Cold Slices of Various Equations of State'
set xlabel 'radius (km)'
set ylabel 'gravitational mass (Msun)'
km_per_Msun=1.47
max_r_in_km=19
set xrange [*:max_r_in_km]
set key top right
unset logscale x
unset logscale y

p \
'maketovsequence-LS220_ColdTable.dat' u ($3*km_per_Msun):2 w l t 'LS 220',\
'maketovsequence-HShen_ColdTable.dat' u ($3*km_per_Msun):2 w l t 'H. Shen 2011',\
'maketovsequence-GShenNL3_ColdTable.dat' u ($3*km_per_Msun):2 w l t 'G. Shen NL3',\
'maketovsequence-GShenFSU21_ColdTable.dat' u ($3*km_per_Msun):2 w l t 'G. Shen FSU 2.1',\
'maketovsequence-SFHo_ColdTable.dat' u ($3*km_per_Msun):2 w l t 'SFHo',\
'maketovsequence-SFHx_ColdTable.dat' u ($3*km_per_Msun):2 w l t 'SFHx',\
'maketovsequence-HempDD2_ColdTable.dat' u ($3*km_per_Msun):2 w l t 'Hempel DD2'