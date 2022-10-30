# EOSVis
Brett Deaton - 2011-2017

Repository of Equation of State (EOS) visualization data and scripts,
made from EOS tables used in [SpEC](https://github.com/sxs-collaboration/spec)
simulations.


### Overview
This repo mainly contains data files and scripts to plot those *dats. These
*dats represent TOV sequences, stellar profiles, and thermodynamic quantities
along various slices of the EsOS available in `$BRETTHOME/EsOS`.
Most of the *dats here I generated with executables from
`$SPECHOME/Hydro/EquationOfState/Executables/`.

Find plotting scripts in `gnuplotscripts/`.

I usually put this repo inside of my `$BRETTHOME/EsOS` dir, and make sure
that my `rsyncEOS` script ignores this EOSVis dir.
Reach out to Brett to request source EsOS datasets.


### Environment
To run these scripts, install gnuplot. On GNU/Linux:
`sudo apt-get install gnuplot`.


### Glossary
* maketovsequence-*dat

  TOV sequences generated from exec MakeTOVSequence. More stellar data for each
  star along the sequence is in the corresponding *out file.
* ploteos-*dat

  Thermodynamic quantities along EOS slices from exec PlotEOS.