
plot_w=5
set size ratio 1
set terminal eps
set style 2 colour red linewidth 2 linetype 5
set style 3 colour blue linewidth 2 linetype 5
set style 4 colour green linewidth 2 linetype 5
set style 5 colour black linewidth 2 linetype 5

set output "p00.eps"
set style 1 fillcolour rgb(1.0,1.0,0.6) linewidth 0
set multiplot
  set width plot_w
  set xrange [0:1]
  set yrange [0:1]
  set axis x invisible
  set axis y invisible
  plot 0:1 with yerrorshaded style 1 notitle
  
  set width 1.2*plot_w
  set xrange [0:1.2]
  set yrange [0:1.2]
  set axis x visible nomirror arrow
  set axis y visible nomirror arrow
  set xtics out 0,1
  set ytics out 0,1
  plot "sin_00_050.dat" with lines style 2 notitle, \
    "sin_00_100.dat" with lines style 3 notitle, \
    "sin_00_200.dat" with lines style 4 notitle
unset multiplot

set output "p01.eps"
set style 1 fillcolour rgb(0.8,1.0,0.8) linewidth 0
set multiplot
  set width plot_w
  set xrange [0:1]
  set yrange [0:2]
  set axis x invisible
  set axis y invisible
  plot 0:2*(1-x) with yerrorshaded style 1 notitle
  
  set width 1.2*plot_w
  set xrange [0:1.2]
  set yrange [0:2.4]
  set axis x visible nomirror arrow
  set axis y visible nomirror arrow
  set xtics out 0,1
  set ytics out 0,2
  plot "sin_01_050.dat" with lines style 2 notitle, \
    "sin_01_100.dat" with lines style 3 notitle, \
    "sin_01_200.dat" with lines style 4 notitle
unset multiplot

set output "p02.eps"
set style 1 fillcolour rgb(1.0,0.8,0.8) linewidth 0
set multiplot
  set width plot_w
  set xrange [0:1]
  set yrange [0:3]
  set axis x invisible
  set axis y invisible
  plot 0:3*(1-x)**2 with yerrorshaded style 1 notitle
  
  set width 1.2*plot_w
  set xrange [0:1.2]
  set yrange [0:3.6]
  set axis x visible nomirror arrow
  set axis y visible nomirror arrow
  set xtics out 0,1
  set ytics out 0,3
  plot "sin_02_050.dat" with lines style 2 notitle, \
    "sin_02_100.dat" with lines style 3 notitle, \
    "sin_02_200.dat" with lines style 4 notitle
unset multiplot

set output "p03.eps"
set style 1 fillcolour rgb(0.8,0.8,1.0) linewidth 0
set multiplot
  set width plot_w
  set xrange [0:1]
  set yrange [0:4]
  set axis x invisible
  set axis y invisible
  plot 0:4*(1-x)**3 with yerrorshaded style 1 notitle
  
  set width 1.2*plot_w
  set xrange [0:1.2]
  set yrange [0:4.8]
  set axis x visible nomirror arrow
  set axis y visible nomirror arrow
  set xtics out 0,1
  set ytics out 0,4
  plot "sin_03_050.dat" with lines style 2 notitle, \
    "sin_03_100.dat" with lines style 3 notitle, \
    "sin_03_200.dat" with lines style 4 notitle
unset multiplot

set output "p08.eps"
set style 1 fillcolour rgb(0.8,1.0,1.0) linewidth 0
set multiplot
  set width plot_w
  set xrange [0:1]
  set yrange [0:9]
  set axis x invisible
  set axis y invisible
  plot 0:10*(1-x)**9 with yerrorshaded style 1 notitle
  
  set width 1.2*plot_w
  set xrange [0:1.2]
  set yrange [0:10.8]
  set axis x visible nomirror arrow
  set axis y visible nomirror arrow
  set xtics out 0,1
  set ytics out 0,9
  plot "sin_08_050.dat" with lines style 2 notitle, \
    "sin_08_100.dat" with lines style 3 notitle, \
    "sin_08_200.dat" with lines style 4 notitle
unset multiplot






