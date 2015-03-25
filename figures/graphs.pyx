#!/usr/local/bin/pyxplot

set terminal pdf
set output "graphs.pdf"

fig_w=6

set axis x arrow nomirror
set axis y arrow nomirror
set size fig_w
set size ratio 1
set xrange [0:1.2]
set yrange [0:6.0]
set xtics out 1
set ytics out 0,1,5

set multiplot
  set nodisplay

  # Plot axes
  plot

  # Actually plot the graphs
  set xrange [0:1]
  set yrange [0:5]
  set axis x invisible
  set axis y invisible
  set size fig_w*5/6.
  plot 1,\
    2*(1-x), \
    3*(1-x)**2, \
    4*(1-x)**3, \
    5*(1-x)**4
  
  set display
  refresh
unset multiplot
