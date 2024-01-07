settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
settings.outformat="html";

//PDF
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph3;

size(280);

void fram(triple P, real th, real ph, real th2, real ph2){
	triple T=dir(th,ph);
	triple N=unit(dir(th2,ph2)-dot(T,dir(th2,ph2))*T);
	triple B=cross(T,N);
	draw(Label("$\mathbf{e}_1(t)$",Relative(0.8)),P--P+T,Arrow3);
	draw(Label("$\mathbf{e}_2(t)$",Relative(0.8)),P--P+N,Arrow3);
	draw(Label("$\mathbf{e}_3(t)$",Relative(0.8)),P--P+B,Arrow3);
	}

triple Q(real t){return (0.7t,cos(t),sin(t));}

draw(graph(Q,0,2.8pi),blue);

fram(Q(0),15,20,-40,150);
fram(Q(1.0pi),60,110,20,80);
fram(Q(2.8pi),20,70,90,110);