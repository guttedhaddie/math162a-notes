settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
settings.outformat="html";

//PDF
if(!settings.multipleView) settings.batchView=false;
settings.render=4;settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import graph3;


size(150);

currentprojection=perspective(2,-6,3);

triple F(pair u){return (cos(u.x),sin(u.x),u.x)+u.y*(-sin(u.x),cos(u.x),1);}

surface s=surface(F,(0,-3),(4pi,6),400,10);

int n=20;
for(int i=0; i<=n; ++i){
triple H(real t){return F((4pi*i/n,t));}
draw(graph(H,-3,6),blue);
	}

draw(s,gray+opacity(0.6));

triple U(real t){return F((t,0));}
draw(graph(U,0,4pi),heavygreen+linewidth(1));

xaxis3(YZZero(align=-Z),-5,5,red);
//,OutTicks(new real[]{-2,2}));
yaxis3(XZZero(align=-Z),-5,5,red);
//,OutTicks(new real[]{-2,2}));
zaxis3(0,6pi,red);
//ztick3(Label("$4\pi$",align=-3X),4pi,-X,red);
//ztick3(Label("$2\pi$",align=-3X),2pi,-X,red);
