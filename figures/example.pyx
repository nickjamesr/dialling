set terminal pdf
set output "example.pdf"

fig_w=12
fig_m=fig_w/100.

set multiplot
  set nodisplay
  eps "example.eps" at 0,0 width 95*fig_m

  # Reflectivity labels

  # Graph labels
  
  set display
  refresh
unset multiplot
