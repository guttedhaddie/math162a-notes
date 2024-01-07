settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(130);

pair y(real x){return (x,x^2);}
pair yp(real x){return unit((1,2x));}

real p=0.25;

draw(graph(y,-0.2,1.1),Arrow(Relative(1)));

draw(Label("$\binom{\cos\theta}{\sin\theta}$",Relative(0.85)),y(p)--y(p)+yp(p),blue,Arrow);
draw(y(0.4)--y(0.4)+yp(0.4),blue+dashed,Arrow);
draw(y(0.6)--y(0.6)+yp(0.6),blue+dashed,Arrow);

draw(Label("$\binom{-\sin\theta}{\cos\theta}$",Relative(0.7)),y(p)--y(p)+I*yp(p),deepgreen,Arrow);

real r=0.3;
draw("$\theta(s)$",arc(y(p),y(p)+(r,0),y(p)+r*yp(p)),ArcArrow);
draw(y(p)--y(p)+(0.6,0),dashed);

label("$\kappa(s)=\theta'(s)>0$",(0.45,-0.2));

draw(shift(y(p))*rotate(degrees(yp(p)),(0,0))*box((0,0),(0.08,0.08)));