set terminal pdf
set output "example.pdf"

set style 1 colour cyan
set style 2 colour yellow
set style 3 colour blue
set style 4 colour green
set style 5 colour red

fig_w=18
fig_m=fig_w/100.
plot_w=28*fig_m
plot_h=20*fig_m


set multiplot
  set nodisplay
  eps "example.eps" at 10*fig_m,plot_h+5*fig_m width 80*fig_m
  eps "beamsplitter.eps" at 15*fig_m,plot_h-8*fig_m width 8*fig_m
  eps "dcmzi.eps" at 46*fig_m,plot_h-8*fig_m width 18*fig_m
  eps "bsmzi.eps" at 71*fig_m,plot_h-8*fig_m width 15*fig_m

  # Beamsplitter reflectivities
  set size plot_w
  set size ratio plot_h/plot_w
  set axis x arrow nomirror
  set axis y arrow nomirror
  set xrange [0:1.1]
  set yrange [0:6.0]
  set xtics out 1
  set ytics out 0,5
  set mytics 1
  set origin 5*fig_m,0
  plot
  set axis x invisible
  set axis y invisible
  set xrange [0:1]
  set yrange [0:5]
  set size plot_w*11/12.
  set size ratio (plot_h*5/6.)/(plot_w*11/12.)
  plot 1 notitle with style 1,\
    2*(1-x) notitle with style 2,\
    3*(1-x)**2 notitle with style 3,\
    4*(1-x)**3 notitle with style 4,\
    5*(1-x)**4 notitle with style 5

  # DC-MZI phases
  set size plot_w
  set size ratio plot_h/plot_w
  set axis x visible arrow nomirror
  set axis y visible arrow nomirror
  set xrange [0:1.1*pi]
  set yrange [0:1.2]
  set xtics out ("\(\pi\)" pi)
  set ytics out 0,1,5
  set mytics 0.2
  set origin 37*fig_m,0
  plot
  set axis x invisible
  set axis y invisible
  set xrange [0:pi]
  set yrange [0:1]
  set size plot_w*11/12.
  set size ratio (plot_h*5/6.)/(plot_w*11/12.)
  plot cos(0.5*x)*sin(0.5*x) notitle with style 1,\
    2*cos(0.5*x)**3*sin(0.5*x) notitle with style 2,\
    3*cos(0.5*x)**5*sin(0.5*x) notitle with style 3,\
    4*cos(0.5*x)**7*sin(0.5*x) notitle with style 4,\
    5*cos(0.5*x)**9*sin(0.5*x) notitle with style 5

  # BS-MZI phases
  set size plot_w
  set size ratio plot_h/plot_w
  set axis x visible arrow nomirror
  set axis y visible arrow nomirror
  set xrange [0:1.1*pi]
  set yrange [0:1.2]
  set xtics out ("\(\pi\)" pi)
  set ytics out 0,1,5
  set mytics 0.2
  set origin 70*fig_m,0
  plot
  set axis x invisible
  set axis y invisible
  set xrange [0:pi]
  set yrange [0:1]
  set size plot_w*11/12.
  set size ratio (plot_h*5/6.)/(plot_w*11/12.)
  plot sin(0.5*x)*cos(0.5*x) notitle with style 1,\
    2*sin(0.5*x)**3*cos(0.5*x) notitle with style 2,\
    3*sin(0.5*x)**5*cos(0.5*x) notitle with style 3,\
    4*sin(0.5*x)**7*cos(0.5*x) notitle with style 4,\
    5*sin(0.5*x)**9*cos(0.5*x) notitle with style 5

  # Axis labels
  text "\(r\)" at 33*fig_m,-3*fig_m
  text "\(\theta\)" at 65*fig_m,-3*fig_m
  text "\(\xi\)" at 98*fig_m,-3*fig_m
  text "\(\mathcal{P}\left(r\right)\)" at 6*fig_m,plot_h-1*fig_m
  text "\(\mathcal{P}\left(\theta\right)\)" at 38*fig_m,plot_h-1*fig_m
  text "\(\mathcal{P}\left(\xi\right)\)" at 71*fig_m,plot_h-1*fig_m

  # Component labels
  # In graphs
  text "\(r\)" at 19*fig_m,plot_h-3*fig_m
  text "\(\theta\)" at 55*fig_m,plot_h-3*fig_m
  text "\(\xi\)" at 79*fig_m,plot_h-3*fig_m
  # In Reck scheme
  text "\(r_{6,1}\)" at 49*fig_m,49*fig_m
  text "\(r_{6,2}\)" at 57*fig_m,45*fig_m
  text "\(r_{6,3}\)" at 67*fig_m,40*fig_m
  text "\(r_{6,4}\)" at 75*fig_m,36*fig_m
  text "\(r_{6,5}\)" at 84*fig_m,31*fig_m

  text "\(r_{5,1}\)" at 40*fig_m,45*fig_m
  text "\(r_{5,2}\)" at 49*fig_m,40*fig_m
  text "\(r_{5,3}\)" at 57*fig_m,36*fig_m
  text "\(r_{5,4}\)" at 67*fig_m,31*fig_m

  text "\(r_{4,1}\)" at 31*fig_m,40*fig_m
  text "\(r_{4,2}\)" at 40*fig_m,36*fig_m
  text "\(r_{4,3}\)" at 49*fig_m,31*fig_m

  text "\(r_{3,1}\)" at 22*fig_m,36*fig_m
  text "\(r_{3,2}\)" at 31*fig_m,31*fig_m

  text "\(r_{2,1}\)" at 13*fig_m,31*fig_m

  # Subfigure labels
  text "(a)" at 4*fig_m,48*fig_m
  text "(b)" at 4*fig_m,22*fig_m
  text "(c)" at 36*fig_m,22*fig_m
  text "(d)" at 69*fig_m,22*fig_m

  set display
  refresh
unset multiplot
