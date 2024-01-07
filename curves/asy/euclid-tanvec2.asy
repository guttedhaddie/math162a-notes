settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(0,90);

pair O=(0,0);
pair P=(6,0.5);
pair v=(1,-2);
pair w=(2,3);



draw(Label("$\mathbf{p}$",Relative(0.5)),O--P,dir(I*P),blue+dashed,Arrow);
dot("$p$",P,NW,blue);
draw("$\mathbf{v}_p$",P--P+v,dir(-I*v),red,Arrow);
draw("$\mathbf{w}$",O--O+w,dir(I*w),heavygreen+dashed,Arrow);
draw("$\mathbf{w}_p$",P--P+w,dir(I*w),heavygreen,Arrow);
draw("$\mathbf{v}_p+\mathbf{w}_p$",P--P+v+w,dir(-I*(v+w)),Arrow);
draw("$\mathbf{v}$",O--v,dir(-I*v),dashed+red,Arrow);
dot("$O$",O,SW);
