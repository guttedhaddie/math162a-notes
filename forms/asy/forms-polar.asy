settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\newcommand{\partials}[2][]{\frac{\partial #1}{\partial #2}}
\newcommand{\partialsat}[3][]{\left.\partials[#1]{#2}\right|_{#3}}
");

import graph;

size(180);

xaxis(red);
yaxis(red);

real r=1.2;
real th=25;
pair P=r*dir(th);

draw("$r$",P--(0,0));
draw("$\theta$",arc((0,0),0.3,0,th),Arrow);
draw((0,P.y)--P--(P.x,0),dashed);

xtick(Label("$x$",align=S),P.x,S,red);
ytick(Label("$y$",align=W),P.y,W,red);


real d=0.3;

draw(Label("$\partialsat{x}{p}$",align=S,Relative(0.8)),P--P+d*dir(0),blue,Arrow);
draw(Label("$\partialsat{y}{p}$",align=E,Relative(0.95)),P--P+d*dir(90),blue,Arrow);
draw(Label("$\partialsat{r}{p}$",align=E,Relative(0.8)),P--P+d*dir(th),heavygreen,Arrow);
draw(Label("$\partialsat{\theta}{p}$",align=W,Relative(0.8)),P--P+d*r*dir(th+90),heavygreen,Arrow);
dot("$p$",P,SE,red);