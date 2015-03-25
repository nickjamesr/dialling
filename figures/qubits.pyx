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

  # Gate labels
  text "\small \(\phi\)" at 6.5*fig_m,2.8*fig_m
  text "\small \(\overline{\phi}\)" at 9.6*fig_m,2.8*fig_m
  text "\small \(\phi\)" at 13.0*fig_m,2.8*fig_m
  text "\small \(\overline{\phi}\)" at 16.2*fig_m,2.8*fig_m
  text "\small \(\phi\)" at 19.5*fig_m,2.8*fig_m
  text "\small \(\overline{\phi}\)" at 22.8*fig_m,2.8*fig_m
  text "\small \(\phi\)" at 26.0*fig_m,2.8*fig_m
  text "\small \(\overline{\phi}\)" at 29.4*fig_m,2.8*fig_m

  text "\small H" at 36.7*fig_m,2.8*fig_m
  text "\small \(\phi\)" at 41.7*fig_m,2.8*fig_m
  text "\small \(\phi\)" at 46.6*fig_m,2.8*fig_m
  text "\small \(\phi\)" at 51.5*fig_m,2.8*fig_m
  text "\small \(\phi\)" at 56.4*fig_m,2.8*fig_m
  text "\small H" at 61.3*fig_m,2.8*fig_m

  text "\small H" at 75.2*fig_m,2.8*fig_m
  text "\small \(\phi\)" at 79.3*fig_m,2.8*fig_m
  text "\small \(\phi\)" at 83.4*fig_m,2.8*fig_m
  text "\small \(\phi\)" at 87.5*fig_m,2.8*fig_m
  text "\small H" at 91.6*fig_m,2.8*fig_m

  text "\small \(\phi\)" at 6.5*fig_m,offset+2.7*fig_m
  text "\small \(\overline{\phi}\)" at 9.6*fig_m,offset+2.7*fig_m
  text "\small \(\phi\)" at 12.7*fig_m,offset+2.7*fig_m
  text "\small \(\overline{\phi}\)" at 15.7*fig_m,offset+2.7*fig_m
  text "\small H" at 19.5*fig_m,offset+2.7*fig_m
  text "\small \(\phi\)" at 22.6*fig_m,offset+2.7*fig_m
  text "\small H" at 25.6*fig_m,offset+2.7*fig_m
  text "\small \(\overline{\phi}\)" at 29.4*fig_m,offset+2.7*fig_m
  text "\small H" at 34.7*fig_m,offset+2.7*fig_m
  text "\small \(\phi\)" at 37.8*fig_m,offset+2.7*fig_m
  text "\small H" at 41.0*fig_m,offset+2.7*fig_m
  text "\small \(\phi\)" at 46.3*fig_m,offset+2.7*fig_m
  text "\small H" at 50.1*fig_m,offset+2.7*fig_m
  text "\small \(\phi\)" at 53.2*fig_m,offset+2.7*fig_m
  text "\small \(\phi\)" at 56.4*fig_m,offset+2.7*fig_m
  text "\small H" at 59.5*fig_m,offset+2.7*fig_m
  text "\small \(\overline{\phi}\)" at 63.3*fig_m,offset+2.7*fig_m
  text "\small \(\overline{\phi}\)" at 66.4*fig_m,offset+2.7*fig_m
  text "\small H" at 71.7*fig_m,offset+2.7*fig_m
  text "\small \(\phi\)" at 74.8*fig_m,offset+2.7*fig_m
  text "\small H" at 77.9*fig_m,offset+2.7*fig_m
  text "\small \(\phi\)" at 83.4*fig_m,offset+2.7*fig_m
  text "\small H" at 87.2*fig_m,offset+2.7*fig_m
  text "\small \(\phi\)" at 90.3*fig_m,offset+2.7*fig_m
  text "\small H" at 93.4*fig_m,offset+2.7*fig_m
  text "\small \(\overline{\phi}\)" at 97.2*fig_m,offset+2.7*fig_m

  set display
  refresh
unset multiplot
