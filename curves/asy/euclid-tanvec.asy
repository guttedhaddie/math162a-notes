settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(100);

pair O=(0,0);
pair P=(1,3);
pair v=(3,1);



draw("$\mathbf{p}$",O--P,dir(I*P),blue+dashed,Arrow);
dot("$p$",P,NW,blue);
draw("$\mathbf{v}_p$",P--P+v,dir(I*v),Arrow);
draw("$\mathbf{p}+\mathbf{v}$",O--P+v,dashed,Arrow);
draw("$\mathbf{v}$",O--v,dashed+red,Arrow);
dot("$O$",O,SW);
