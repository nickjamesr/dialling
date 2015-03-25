set terminal pdf
set output "unitary.pdf"

fig_w=8.2
fig_m=fig_w/100.

set multiplot
  set nodisplay
  eps "unitary.eps" at 0,0 width fig_w
  eps "components.eps" at 20*fig_m,64*fig_m width 60*fig_m

  # Subfigure labels
  text "(a)" at 0*fig_m,67*fig_m
  text "(b)" at 50*fig_m,67*fig_m
  text "(c)" at 50*fig_m,40*fig_m
  
  # Component labels
  text "\(r\)" at 17*fig_m,67*fig_m
  text "\(\phi\)" at 73*fig_m,67*fig_m

  # Reck scheme labels
  text "\(\alpha_{1}\)" at 0*fig_m,4*fig_m
  text "\(\alpha_{2}\)" at 0*fig_m,14*fig_m
  text "\(\alpha_{3}\)" at 0*fig_m,24*fig_m
  text "\(\alpha_{4}\)" at 0*fig_m,34*fig_m

  text "\(\phi_{2,1}\)" at 16*fig_m,14*fig_m
  text "\(\phi_{3,2}\)" at 57*fig_m,14*fig_m
  text "\(\phi_{4,3}\)" at 96*fig_m,14*fig_m
  text "\(\phi_{3,1}\)" at 36*fig_m,24*fig_m
  text "\(\phi_{3,2}\)" at 76*fig_m,24*fig_m
  text "\(\phi_{4,1}\)" at 56*fig_m,34*fig_m

  text "\(r_{2,1}\)" at 16*fig_m,5*fig_m
  text "\(r_{3,2}\)" at 57*fig_m,5*fig_m
  text "\(r_{4,3}\)" at 96*fig_m,5*fig_m
  text "\(r_{3,1}\)" at 36*fig_m,15*fig_m
  text "\(r_{4,2}\)" at 76*fig_m,15*fig_m
  text "\(r_{4,1}\)" at 56*fig_m,25*fig_m

  # Matrices
  text "\( \left( \begin{array}{cc} \sqrt{r} & \sqrt{1-r} \\\\ \sqrt{1-r} & \
-\sqrt{r} \end{array} \right) \)" at 5*fig_m,48*fig_m
  text "\( \left( \begin{array}{cc} e^{i \phi} & 0 \\\\ 0 & 1 \end{array} \
\right) \)" at 62*fig_m,48*fig_m

  set display
  refresh
unset multiplot
