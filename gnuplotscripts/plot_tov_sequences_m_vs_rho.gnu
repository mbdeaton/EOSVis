# Plot TOV Sequences

set title 'TOV Sequences from Cold Slices of Various Equations of State'
set xlabel 'central density (G=c=Msun=1)'
set ylabel 'gravitational mass (Msun)'
set xrange [1e-4:8e-3]
set yrange [0:3]
set logscale x
unset logscale y
set key top left

p \
'maketovsequence-LS220_ColdTable.dat' u 1:2 w l t 'LS 220',\
'maketovsequence-HShen_ColdTable.dat' u 1:2 w l t 'H. Shen 2011',\
'maketovsequence-GShenNL3_ColdTable.dat' u 1:2 w l t 'G. Shen NL3',\
'maketovsequence-GShenFSU21_ColdTable.dat' u 1:2 w l t 'G. Shen FSU 2.1',\
'maketovsequence-SFHo_ColdTable.dat' u 1:2 w l t 'SFHo',\
'maketovsequence-SFHx_ColdTable.dat' u 1:2 w l t 'SFHx',\
'maketovsequence-HempDD2_ColdTable.dat' u 1:2 w l t 'Hempel DD2'
