set terminal pdf
set output "cascade.pdf"

fig_w=7.5
fig_m=fig_w/100.

set multiplot
  set nodisplay
  eps "cascade.eps" at 0,0 width fig_w

  # Physical labels
  text "\(r_{0}\)" at 0,43*fig_m
  text "\(r_{1}\)" at 15*fig_m,43*fig_m
  text "\(r_{2}\)" at 35*fig_m,33*fig_m
  text "\(r_{m-1}\)" at 72*fig_m,13*fig_m

  text "\(\phi_{0}\)" at 86*fig_m,45*fig_m
  text "\(\phi_{1}\)" at 86*fig_m,35*fig_m
  text "\(\phi_{m-2}\)" at 85*fig_m,15*fig_m
  text "\(\phi_{m-1}\)" at 85*fig_m,5*fig_m

  # Cartesian labels
  text "\(x_{0}\)" at 98*fig_m,43*fig_m
  text "\(x_{1}\)" at 98*fig_m,33*fig_m
  text "\(x_{m-2}\)" at 98*fig_m,13*fig_m
  text "\(x_{m-1}\)" at 98*fig_m,3*fig_m

  set display
  refresh
unset multiplot
