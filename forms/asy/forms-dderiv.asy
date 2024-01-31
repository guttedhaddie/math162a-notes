settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(0,110);

picture rn;

fill(rn,2dir(0)..1.2dir(90)..1.4dir(120)..1.1dir(160)..1.5dir(180)..1.2dir(250)..1.2dir(300)..cycle,0.4*lightblue+0.6*white);

draw(rn,(-1.2,-0.6)..(0,0){dir(20)}..(1.2,-0.5),blue);

dot(rn,"$p$",(0,0),NW,blue);
draw(rn,Label("$\mathbf v$",align=dir(110),Relative(0.7)),(0,0)--0.99*dir(20),blue,Arrow);

label(rn,"$U$",(2,0),E,blue);

add(shift((-0.15,2.6))*rn);

xaxis("$t$",-3.5,-1,red,Arrow);
xtick(Label("$0$",align=S),-2.5,S,red);

xaxis("$\mathbb{R}$",1,3.5,red,Arrow);
xtick(Label("$f(p)$",align=S),2,S,red);

path lt=(-2.5,0){dir(70)}..(-1.5,1.6);
real llt=arclength(lt);
draw("$\mathbf{x}$",subpath(lt,0.05*llt,llt),dir(150),Arrow);

path rt=(2,0){dir(110)}..(1.2,1.6);
real lrt=arclength(rt);
draw("$f$",reverse(subpath(rt,0.05*lrt,lrt)),dir(30),Arrow);
