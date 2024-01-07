settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");


import graph;

size(150);

draw((-1,0)--(0,1),blue,Arrow(Relative(0.5)));
draw((0,1)--(1,0),blue,Arrow(Relative(0.5)));

xaxis("$x$",-1.2,1.2,red,RightTicks(new real[]{-1,0,1}));
yaxis("$y$",0,1.2,red,LeftTicks(new real[]{1}));