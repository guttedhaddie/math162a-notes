settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(130);

real t=30;

draw(Label("$\binom{\cos\theta}{\sin\theta}$",Relative(0.85)),(0,0)--dir(t),blue,Arrow);
draw(Label("$\binom{-\sin\theta}{\cos\theta}$",Relative(0.85),align=-dir(t)),(0,0)--dir(t+90),deepgreen,Arrow);
draw(Label("$\binom{\sin\theta}{-\cos\theta}$",Relative(0.85),align=dir(t)),(0,0)--dir(t-90),red,Arrow);

real r=0.3;
draw("$\theta$",arc((0,0),(r,0),r*dir(t)),ArcArrow);

draw(rotate(t,(0,0))*box((0,0),(0.1,0.1)));

xaxis();
yaxis();