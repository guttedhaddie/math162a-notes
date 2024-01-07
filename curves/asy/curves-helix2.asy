settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(0,100);

pair XX(real t){return (cos(t),sin(t));}

draw(unitcircle,blue,ArcArrow(Relative(0.4)));

xaxis("$x$",-1.1,1.1,red,RightTicks(new real[]{-1,1}));
yaxis("$y$",-1.1,1.1,red,LeftTicks(new real[]{-1,1}));

