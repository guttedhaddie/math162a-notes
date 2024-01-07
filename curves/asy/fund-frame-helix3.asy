if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.prc=false;
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph3;
import three;

size(240);

currentprojection=perspective(-cos(0.6pi),-sin(0.6pi),1.55);

triple XX(real t){return (cos(t),sin(t),t);}

draw(graph(XX,-pi/2,1.5pi),Arrow3(Relative(0.4)));

xaxis3("$x$",YZZero(align=-Z),-1.2,1.2,red,OutTicks(new real[]{-1,1}));
yaxis3("$y$",XZZero(align=-Z),-1.2,1.2,red,OutTicks(new real[]{-1,1}));
zaxis3(Label("$z$",align=-X),-pi/2,1.5pi,red);
ztick3(Label("$\pi$",align=-3X),pi,-X,red);
//ztick3(Label("$-\pi$",align=-3X),-pi,-X,red);
//ztick3(Label("$2\pi$",align=-3X),2pi,-X,red);
//ztick3(Label("$3\pi$",align=-3X),3pi,-X,red);

triple FT(real t){return unit((-sin(t),cos(t),1));}
triple FN(real t){return (-cos(t),-sin(t),0);}
triple FB(real t){return cross(FT(t),FN(t));}

real mul=2.5;

void ffram(real t){
	draw("$\mathbf{T}$",XX(t)--XX(t)+FT(t),heavygreen,Arrow3);
	draw("$\mathbf{N}$",XX(t)--XX(t)+FN(t),orange,Arrow3);
	draw("$\mathbf{B}$",XX(t)--XX(t)+FB(t),darkblue,Arrow3);
	path3 pl=plane(mul*FT(t),mul*FN(t),XX(t)-(mul/3)*FT(t)-(mul/3)*FN(t));
	surface pla=surface(pl);
	draw(pla,black);
	}


ffram(0.6pi);


