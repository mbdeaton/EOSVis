# Plot TOV Sequences

load '../gnuplotscripts/linestyle_defs.gnu'

set title 'TOV Sequences from Cold, Beta-Eq Slices of Equations of State'

set xlabel 'mass (Msun)'
unset x2label

set ylabel 'compactness (M/R)'
unset y2label

min_M=1.15
max_M=1.45
set xrange [min_M:max_M]
unset logscale x
unset x2tics
set xtics mirror

set yrange [0.123:0.183]
unset logscale y
unset y2tics
set ytics mirror

set key top left

p \
'../maketovsequence-LS220_ColdTable.dat' u 2:($2/$3) w l ls 1 t 'LS 220',\
'../maketovsequence-GShenFSU21_ColdTable-T0.1-smooth.dat' u 2:($2/$3) w l ls 4 t 'G. Shen FSU 2.1',\
'../maketovsequence-SFHo_ColdTable.dat' u 2:($2/$3) w l ls 5 t 'SFHo',\
'../maketovsequence-SFHx_ColdTable.dat' u 2:($2/$3) w l ls 6 t 'SFHx',\
'../maketovsequence-HempDD2_ColdTable.dat' u 2:($2/$3) w l ls 7 t 'Hempel DD2'
