# Plot TOV Sequences

load '../gnuplotscripts/linestyle_defs.gnu'

set title 'TOV Sequences from Cold, Beta-Eq Slices of Equations of State'

set xlabel 'mass (Msun)'
unset x2label

set ylabel 'compactness (M/R)'
unset y2label

set xrange [*:*]
unset logscale x
unset x2tics
set xtics mirror

min_c=0.05
max_c=0.25
set yrange [*:*]
unset logscale y
unset y2tics
set ytics mirror

set key top right

p \
'../maketovsequence-LS220_ColdTable.dat' u 2:($2/$3) w l ls 1 t 'LS 220',\
'../maketovsequence-GShenFSU21_ColdTable-T0.1-smooth.dat' u 2:($2/$3) w l ls 4 t 'G. Shen FSU 2.1',\
'../maketovsequence-SFHo_ColdTable.dat' u 2:($2/$3) w l ls 5 t 'SFHo',\
'../maketovsequence-SFHx_ColdTable.dat' u 2:($2/$3) w l ls 6 t 'SFHx',\
'../maketovsequence-HempDD2_ColdTable.dat' u 2:($2/$3) w l ls 7 t 'Hempel DD2',\
0.10 lt 0 t 'C=0.1,0.15,0.2',\
0.15 lt 0 t '',\
0.20 lt 0 t ''
