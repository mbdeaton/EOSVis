# Plot TOV Profiles

load '../gnuplotscripts/linestyle_defs.gnu'

set title 'TOV Profiles of Selected Stars from Cold, Beta-Eq Slices of EOSs'

set xlabel 'areal radius (km)'
unset x2label
km_per_Msun=1.47
max_r_in_km=12
set xrange [*:max_r_in_km]
unset logscale x
unset x2tics
set xtics mirror

set ylabel 'rest density (G=c=Msun=1)'
set y2label 'rest density (g/cm^3)'
geoTocgs_rho=6.178e17
min_rho_geo=-3e-5 # to bring the low density stuff onto the plot
max_rho_geo=1.4e-3
set yrange [min_rho_geo:max_rho_geo]
set y2range [min_rho_geo*geoTocgs_rho:max_rho_geo*geoTocgs_rho]
unset logscale y
unset logscale y2
set ytics nomirror
set y2tics nomirror

set key top right

p \
'../profile-M12-LS220.dat' u ($1*km_per_Msun):2 w l ls 1 t 'LS 220 M=1.2',\
'../profile-M14-LS220.dat' u ($1*km_per_Msun):2 w l ls 1 t 'LS 220 M=1.4',\
'../profile-M12-FSU21.dat' u ($1*km_per_Msun):2 w l ls 4 t 'G. Shen FSU 2.1 M=1.2',\
'../profile-M14-FSU21.dat' u ($1*km_per_Msun):2 w l ls 4 t 'G. Shen FSU 2.1 M=1.4',\
'../profile-M12-SFHo.dat' u ($1*km_per_Msun):2 w l ls 5 t 'SFHo M=1.2',\
'../profile-M14-SFHo.dat' u ($1*km_per_Msun):2 w l ls 5 t 'SFHo M=1.4',\
'../profile-M12-SFHx.dat' u ($1*km_per_Msun):2 w l ls 6 t 'SFHx M=1.2',\
'../profile-M14-SFHx.dat' u ($1*km_per_Msun):2 w l ls 6 t 'SFHx M=1.4',\
'../profile-M12-DD2.dat' u ($1*km_per_Msun):2 w l ls 7 t 'Hempel DD2 M=1.2',\
'../profile-M14-DD2.dat' u ($1*km_per_Msun):2 w l ls 7 t 'Hempel DD2 M=1.4'
