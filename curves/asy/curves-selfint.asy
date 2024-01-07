settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(140);

pair P(real t){return (sin(2t/3),cos(t));}

draw(graph(P,0,3pi,operator..),Arrow(Relative(0.15)));
draw(graph(P,3pi,6pi,operator..),Arrow(Relative(0.75)));

xaxis("$x$",-1.2,1.2,red,RightTicks(new real[]{-1,1}));
yaxis("$y$",-1.2,1.2,red,LeftTicks(new real[]{-1,1}));

draw((0,0)--(-2/3,1),blue,Arrow);
draw((0,0)--(-2/3,-1),heavygreen,Arrow);