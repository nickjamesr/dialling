set terminal pdf
set output "matrix.pdf"

fig_w=6
fig_m=fig_w/100.

set multiplot
  set nodisplay
  eps "matrix.eps" at 0,0 width fig_w

  # Region labels
  text "(a)" at 4*fig_m,6*fig_m
  text "(b)" at 47*fig_m,6*fig_m
  text "(c)" at 4*fig_m,63*fig_m
  text "(d)" at 29*fig_m,29*fig_m
  text "(e)" at 47*fig_m,63*fig_m
  text "(f)" at 80*fig_m,80*fig_m
  
  set display
  refresh
unset multiplot
