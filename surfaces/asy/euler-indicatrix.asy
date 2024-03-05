settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(140);

real c=3/(sqrt(8));
real b(real a){return a+c/a;}
real bb(real a){return a-c/a;}


real d=0.2;
real dd=3;

draw(graph(b,d,dd),blue); 
draw(graph(b,-dd,-d),blue); 
draw(graph(bb,d,dd),blue); 
draw(graph(bb,-dd,-d),blue);

draw((-dd,-dd)--(dd,dd),dashed+heavygreen+linewidth(0.8));
draw((0,-1.3dd)--(0,1.3dd),dashed+heavygreen+linewidth(0.8));

label("$T_p\mathbb R^2$",(2,4));


xaxis("$a$",red);
yaxis("$b$",red);