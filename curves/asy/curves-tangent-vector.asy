settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(120);

pair O=(0,0);
pair A=(1,2);

draw((-1,0)..A{dir(30)}..(2,1.5),blue,Arrow(Relative(0.45)));

dot("$O$",O,SE);
draw("$\mathbf{x}(t)$",O--A,dashed,Arrow);
draw(Label("$\mathbf{x}'(t)$",align=dir(110)),A--A+1.2dir(30),0.8blue+0.2white,Arrow);

dot("$p$",A,dir(150),red);