settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200);

draw((0,0)--(90,45),blue,Arrow(Relative(0.5)));

real ph(real t){return asin(sin(t)/(sqrt(2)));}
real th(real t){return acos(cos(t)/cos(ph(t)));}

pair p(real t){return 180/pi*(th(t),ph(t));}

draw(graph(p,0,pi/2),heavygreen,Arrow(Relative(0.5)));

xaxis(Label("$\theta$"),0,100,red,Arrow);
yaxis(Label("$\phi$"),0,58,red,Arrow);
xtick(Label("$0$",align=S),0,S,red);
xtick(Label("$\frac\pi 2$",align=S),90,S,red);
//xtick(Label("$\frac{3\pi}2$",align=S),270,S,red);
//xtick(Label("$2\pi$",align=S),360,S,red);
//xtick(Label("$\pi$",align=S),180,S,red);
ytick(Label("$0$",align=W),0,W,red);
ytick(Label("$\frac\pi 4$",align=W),45,W,red);
//ytick(Label("$-\frac\pi 2$",align=W),-90,W,red);

