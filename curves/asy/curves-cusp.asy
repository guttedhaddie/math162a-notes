settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");


import graph;

size(150);

pair f(real t){return (t^3,t^2);}
path p=(0,0){up}..graph(f,0,1);

draw(p,blue,Arrow(Relative(0.5)));
draw(reflect((0,0),(0,1))*reverse(p),blue,Arrow(Relative(0.5)));

xaxis("$x$",-1.2,1.2,red,RightTicks(new real[]{-1,0,1}));
yaxis("$y$",0,1.2,red,LeftTicks(new real[]{1}));