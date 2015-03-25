set terminal pdf
set output "qubits.pdf"

fig_w = 18
fig_m = fig_w/100.
offset=42*fig_m

set multiplot
  set nodisplay
  eps "threequbit.eps" at 5*fig_m,0 width 95*fig_m
  eps "twoqubit.eps" at 5*fig_m,offset width 95*fig_m

  # Rail labels
  text "\(\left|00\right\rangle\)" at 0,offset+22.5*fig_m
  text "\(\left|01\right\rangle\)" at 0,offset+19.5*fig_m
  text "\(\left|10\right\rangle\)" at 0,offset+16.5*fig_m
  text "\(\left|11\right\rangle\)" at 0,offset+13.5*fig_m
 
  text "\(\left|000\right\rangle\)" at 0,34*fig_m
  text "\(\left|001\right\rangle\)" at 0,31.64*fig_m
  text "\(\left|010\right\rangle\)" at 0,29.29*fig_m
  text "\(\left|011\right\rangle\)" at 0,26.93*fig_m
  text "\(\left|100\right\rangle\)" at 0,24.57*fig_m
  text "\(\left|101\right\rangle\)" at 0,22.21*fig_m
  text "\(\left|110\right\rangle\)" at 0,19.86*fig_m
  text "\(\left|111\right\rangle\)" at 0,17.5*fig_m

  # subfigure labels
  text "(a)" at 0,offset+27*fig_m
  text "(b)" at 16*fig_m,38*fig_m
  text "(c)" at 48*fig_m,38*fig_m
  text "(d)" at 83*fig_m,38*fig_m

  set display
  refresh
unset multiplot
