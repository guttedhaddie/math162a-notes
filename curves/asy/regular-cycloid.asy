settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(250);

pair C(real t){return (t-sin(t),1-cos(t));}

void cyc(real t){draw(shift(t,1)*rotate(210-180*t/pi,(0,0))*reverse(unitcircle),Arrow);
	dot((t-sin(t),1-cos(t)),red);
	}
	
draw(graph(C,0,2pi),blue,Arrow(Relative(0.5)));

real T=1.8;
draw((T,0)--(T,1)--C(T));
cyc(T);
draw("$t$",arc((T,1),0.19,270,270-T*180/pi),SW,Arrow);


cyc(0);
cyc(3.6);

xaxis("$x$",0,2.1pi,red);
yaxis("$y$",0,2,red,LeftTicks(new real[]{0,1,2}));

xtick(Label("$\pi$",align=S),pi,S,red);
xtick(Label("$2\pi$",align=S),2pi,S,red);
xtick(Label("$\frac{3\pi}2$",align=S),3pi/2,S,red);
xtick(Label("$\frac{\pi}2$",align=S),pi/2,S,red);
xtick(Label("$0$",align=S),0,S,red);