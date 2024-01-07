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
pair P=(2,1);


dot("$P$",P,SE,red);
draw("$\mathbf{p}$",O--P,blue,Arrow);
dot("$O$",O,SE);