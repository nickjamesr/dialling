set terminal pdf
set output "example.pdf"

fig_w=8.5
fig_m=fig_w/100.

set multiplot
  set nodisplay
  eps "example.eps" at 0,0 width 95*fig_m

  # Reflectivity labels
  text "\(r_{4,1}\)" at 44*fig_m,32*fig_m
  text "\(r_{3,1}\)" at 26*fig_m,22*fig_m
  text "\(r_{4,2}\)" at 63*fig_m,22*fig_m
  text "\(r_{2,1}\)" at 7*fig_m,12*fig_m
  text "\(r_{3,2}\)" at 44*fig_m,12*fig_m
  text "\(r_{4,3}\)" at 81*fig_m,12*fig_m

  # Graph labels
  text "(a)" at 95*fig_m, 5*fig_m
  text "(b)" at 95*fig_m, 15*fig_m
  text "(c)" at 95*fig_m, 25*fig_m
  
  set display
  refresh
unset multiplot
