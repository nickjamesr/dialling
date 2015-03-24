#!/usr/local/bin/pyxplot

set terminal pdf
set output "graphs.pdf"

width=2
padding=2.0

set axis x arrow nomirror
set axis y arrow nomirror
set size width
set size ratio 1
set xrange [0:1.2]
set xtics out 1

set multiplot
# Plot the axes
  set origin 0,0
  set xlabel "(a)"
  set yrange [0:1.2]
  set label 1 "\(r\)" at 1.1,0.1
  set label 2 "\(\mathcal{P}\left(r\right)=1\)" at 0.2,1.08
  set ytics out 1
  plot

  set origin (width+padding),0
  set xlabel "(b)"
  set yrange [0:2.4]
  set label 1 "\(r\)" at 1.1,0.2
  set label 2 "\(\mathcal{P}\left(r\right)=2\left(1-r\right)\)" at 0.2,2.16
  set ytics out 2
  plot

  set origin 2*(width+padding),0
  set xlabel "(c)"
  set yrange [0:3.6]
  set label 1 "\(r\)" at 1.1,0.3
  set label 2 "\(\mathcal{P}\left(r\right)=3\left(1-r\right)^2\)" at 0.2,3.24
  set ytics out 3
  plot

# Actually plot the graphs
  set xrange [0:1]
  set axis x invisible
  set axis y invisible
  set size 5/3.
  unset label 2

  set origin 0,0
  set yrange [0:1]
  plot 1 notitle

  set origin (width+padding),0
  set yrange [0:2]
  plot 2*(1-x) notitle

  set origin 2*(width+padding),0
  set yrange [0:3]
  plot 3*(1-x)**2 notitle

unset multiplot
