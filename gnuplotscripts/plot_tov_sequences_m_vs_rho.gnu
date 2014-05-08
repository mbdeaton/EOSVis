# Plot TOV Sequences

load 'gnuplotscripts/linestyle_defs.gnu'

set title 'TOV Sequences from Cold Slices of Various Equations of State'
set xlabel 'central density (G=c=Msun=1)'
set ylabel 'gravitational mass (Msun)'
set xrange [1e-4:8e-3]
set yrange [0:3]
set logscale x
unset logscale y
set key top left

p \
'maketovsequence-LS220_ColdTable.dat' u 1:2 w l ls 1 t 'LS 220',\
'maketovsequence-HShen_ColdTable.dat' u 1:2 w l ls 2 t 'H. Shen 2011',\
'maketovsequence-GShenNL3_ColdTable.dat' u 1:2 w l ls 3 t 'G. Shen NL3',\
'maketovsequence-GShenFSU21_ColdTable-warm-smooth.dat' u 1:2 w l ls 4 t 'G. Shen FSU 2.1',\
'maketovsequence-SFHo_ColdTable.dat' u 1:2 w l ls 5 t 'SFHo',\
'maketovsequence-SFHx_ColdTable.dat' u 1:2 w l ls 6 t 'SFHx',\
'maketovsequence-HempDD2_ColdTable.dat' u 1:2 w l ls 7 t 'Hempel DD2'
