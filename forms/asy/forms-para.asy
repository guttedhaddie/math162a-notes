settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(130);

real x=1;
real y=1.2;
pair p=(x,y);
pair u=(3x,2y);
pair v=(y,4x);

draw(Label("$u_p$",Relative(0.6)),p--p+u,blue,Arrow);
draw(Label("$v_p$",Relative(0.6),align=I*unit(v)),p--p+v,deepgreen,Arrow);
draw(p+u--p+u+v,blue+dashed);
draw(p+u+v--p+v,deepgreen+dashed);

dot("$p$",p,SW,red);

xaxis(0,red);
yaxis(0,red);

real f=0.8;

xtick(Label(scale(f)*"$0$",align=S),0,S,red);
xtick(Label(scale(f)*"$x$",align=S),x,S,red);
xtick(Label(scale(f)*"$\textcolor{red}{x}\!+\!\textcolor{Green}{y}$",align=S),(p+v).x,S,deepgreen);
xtick(Label(scale(f)*"$\textcolor{red}{x}\!+\!\textcolor{blue}{3x}$",align=S),(p+u).x,S,blue);
ytick(Label(scale(f)*"$0$",align=W),0,W,red);
ytick(Label(scale(f)*"$y$",align=W),y,W,red);
ytick(Label(scale(f)*"$\textcolor{red}{y}\!+\!\textcolor{Green}{4x}$",align=W),(p+v).y,W,deepgreen);
ytick(Label(scale(f)*"$\textcolor{red}{y}\!+\!\textcolor{blue}{2y}$",align=W),(p+u).y,W,blue);