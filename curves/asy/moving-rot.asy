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
pair D=dir(90+th);

draw(C--O--A,Arrows);
draw(Label("$\left(\!\begin{smallmatrix}\cos\theta\\\sin\theta\end{smallmatrix}\!\right)$",Relative(0.75)),O--B,dir(th+90),blue,Arrow);
draw(Label("$\left(\!\begin{smallmatrix}-\sin\theta\\\cos\theta\end{smallmatrix}\!\right)$",Relative(0.7)),O--D,dir(th+180),deepgreen,Arrow);
draw(O+0.07dir(B)--O+0.07dir(B)+0.07dir(D)--O+0.07dir(D));
draw("$\theta$",arc(O,0.15,0,th),ArcArrow);

draw(B--(B.x,0),dashed+blue);
draw(D--(0,D.y),dashed+heavygreen);
draw((B.x-0.07,0)--(B.x-0.07,0.07)--(B.x,0.07));
draw((-0.07,D.y)--(-0.07,D.y-0.07)--(0,D.y-0.07));