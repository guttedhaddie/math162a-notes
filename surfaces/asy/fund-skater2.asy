settings.tex="pdflatex";

import graph;


size(175,100,IgnoreAspect);

real f(real t){return (1+64*t^2*(1-t)^2)/(sqrt(1+(1-t)^2));}

draw(graph(f,0,1),blue);

xaxis("$t$",0,1,red,RightTicks(new real[]{0,1}));
yaxis("$\mathbf y''\cdot\mathbf n$",0,5,red,LeftTicks(new real[]{0,5}));
