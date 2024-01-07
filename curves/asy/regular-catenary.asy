settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(150);

real f(real t){return cosh(t);}
path p=graph(f,-1.2,1.2);

draw(p,blue,Arrow(Relative(0.65)));

xaxis("$x$",-1.2,1.2,red,RightTicks(new real[]{-1,0,1}));
yaxis("$y$",0,2,red,LeftTicks(new real[]{1}));