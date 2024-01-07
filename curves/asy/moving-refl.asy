settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;
import markers;

size(0,150);

xaxis("$x$",-1.1,1.1,red,RightTicks(new real[]{-1,1}));
yaxis("$y$",-0.6,1.1,red,LeftTicks(new real[]{1}));

real th=60;

pair O=(0,0);
pair A=(1,0);
pair B=dir(th);
pair C=(0,1);
pair D=dir(270+th);
pair R=dir(th/2);

draw(C--O--A,Arrows);
draw(Label("$\left(\!\begin{smallmatrix}\cos\theta\\\sin\theta\end{smallmatrix}\!\right)$",Relative(0.75)),O--B,dir(th+90),blue,Arrow);
draw(Label("$\left(\!\begin{smallmatrix}\sin\theta\\-\cos\theta\end{smallmatrix}\!\right)$",Relative(0.72)),O--D,dir(th+180),deepgreen,Arrow);
draw(O+0.07dir(B)--O+0.07dir(B)+0.07dir(D)--O+0.07dir(D));
draw("$\frac\theta 2$",arc(O,0.3,0,th/2),ArcArrow);
draw(R+0.25dir(th/2-90)--R+0.25dir(th/2+90),dashed,Arrows);
draw(-R--R,dashed);
draw(Label("$\theta$",Relative(0.7)),arc(O,0.7,0,th),dashed+blue,ArcArrow);
draw(Label("$\pi+\theta$",Relative(0.6)),arc(O,0.4,90,270+th),dashed+deepgreen,ArcArrow);