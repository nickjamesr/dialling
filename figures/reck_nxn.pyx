set terminal pdf
set output "reck_nxn.pdf"

fig_w=7
fig_m=fig_w/100.

set multiplot
  set nodisplay
  eps "reck_nxn.eps" at 12*fig_m,0 width fig_w
  
  # Input labels
  text "\(n-1\)" at 0,4*fig_m
  text "\(n-2\)" at 0,14*fig_m
  text "\(n-3\)" at 0,24*fig_m
  text "\(0\)" at 8*fig_m,44*fig_m

  # Block labels
  text "\(\mathrm{R}_{1}\)" at 24*fig_m,3*fig_m
  text "\(\mathrm{R}_{2}\)" at 42*fig_m,8*fig_m
  text "\(\mathrm{R}_{3}\)" at 60*fig_m,13*fig_m
  text "\(\mathrm{R}_{n}\)" at 95*fig_m,23*fig_m

  set display
  refresh
unset multiplot
