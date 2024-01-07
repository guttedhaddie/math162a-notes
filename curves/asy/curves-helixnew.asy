settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
if(!settings.multipleView) settings.batchView=false;
settings.render=4;settings.outformat="png";

//HTML - opacity fine
//settings.outformat="html";

//PDF
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph3;

size3(140,140,200,IgnoreAspect);

currentprojection=perspective(6,-4,8);

triple XX(real t){return (cos(t),sin(t),t);}
triple TT(real t){return (-sin(t),cos(t),1);}

draw(graph(XX,-pi,3pi),blue,Arrow3(Relative(0.4)));

real t=7.4;

draw(Label("$\mathbf{x}(t)$",align=X+Y),O--XX(t),dashed,Arrow3);
draw(Label("$\mathbf{x}'(t)$",align=2Z,blue),XX(t)--XX(t)+TT(t),lightblue,Arrow3);

xaxis3("$x$",YZZero(align=-Z),-1.2,1.2,red,OutTicks(new real[]{-1,1}));
yaxis3("$y$",XZZero(align=-Z),-1.2,1.2,red,OutTicks(new real[]{-1,1}));
zaxis3(Label("$z$",align=-X),-1.2pi,3.4pi,red);
ztick3(Label("$\pi$",align=-3X),pi,-X,red);
ztick3(Label("$-\pi$",align=-3X),-pi,-X,red);
ztick3(Label("$2\pi$",align=-3X),2pi,-X,red);
ztick3(Label("$3\pi$",align=-3X),3pi,-X,red);

