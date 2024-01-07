settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(100,110,IgnoreAspect);

pair XX(real t){return (sin(t),t);}

draw(graph(XX,-pi,3pi),blue,ArcArrow(Relative(0.4)));

xaxis("$y$",-1.2,1.2,red,RightTicks(new real[]{-1,1}));
yaxis("$z$",-1.2pi,3.6pi,red);
ytick(Label("$\pi$",align=W),pi,W,red);
ytick(Label("$-\pi$",align=W),-pi,W,red);
ytick(Label("$2\pi$",align=W),2pi,W,red);
ytick(Label("$3\pi$",align=W),3pi,W,red);

