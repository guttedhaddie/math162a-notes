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


size(220);

currentprojection=perspective(6,-4,6);

triple F(pair u){return (u.y*cos(u.x),u.y*sin(u.x),u.x);}

surface s=surface(F,(0,0),(4pi,5),80);

triple U(real t){return F((t,1));}
draw(graph(U,0,4pi),heavygreen);

int n=20;
for(int i=0; i<=n; ++i){
triple H(real t){return F((4pi*i/n,t));}
draw(graph(H,0,5),blue);
	}

draw(s,gray+opacity(0.6));

xaxis3("$x$",YZZero(align=-Z),-5.5,5.5,red);
//,OutTicks(new real[]{-4,0,4}));
yaxis3("$y$",XZZero(align=-Z),-5.5,5.5,red);
//,OutTicks(new real[]{-4,4}));
zaxis3(Label("$z$",align=-X),0,4.4pi,red);
//ztick3(Label("$\pi$",align=-3X),pi,-X,red);
//ztick3(Label("$2\pi$",align=-3X),2pi,-X,red);
