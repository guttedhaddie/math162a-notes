settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(130,90,IgnoreAspect);

pair O=(0,0);
pair A=(-1,1.5);
pair B=(1,2.5);

draw(A-0.5(B-A)--A+1.5(B-A),blue,Arrow(Relative(0.55)));

dot(A,NW);
dot(B,N);
dot("$O$",O,SE);
draw(scale(0.7)*Label("$\mathbf{x}(0)=\mathbf{a}$",align=I*unit(A)),O--A,dashed,Arrow);
draw(scale(0.7)*Label("$\mathbf{x}(1)=\mathbf{b}$",align=-I*unit(B)),O--B,dashed,Arrow);