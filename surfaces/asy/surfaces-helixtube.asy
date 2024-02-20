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
import graph;
import graph3;
import three;

size(150);

currentprojection=perspective(2,-6,3);

triple H(real t){return (3*cos(t),3*sin(t),t);}
triple N(real t){return (-cos(t),-sin(t),0);}
triple B(real t){return (1/(sqrt(10)))*(sin(t),-cos(t),3);}

triple F(pair u){return H(u.x)+cos(u.y)*N(u.x)+sin(u.y)*B(u.x);}

surface s=surface(F,(0,0),(4pi,2pi),150,50);

draw(graph(H,0,4pi),heavygreen+linewidth(1));

int n=20;
for(int i=0; i<=n; ++i){
triple H(real t){return F((4pi*i/n,t));}
draw(graph(H,0,2pi),blue);
	}

draw(s,gray+opacity(0.6));

xaxis3(YZZero(align=-Z),-4.5,4.5,red);
//,OutTicks(new real[]{-4,0,4}));
yaxis3(XZZero(align=-Z),-4.5,4.5,red);
//,OutTicks(new real[]{-4,4}));
zaxis3(0,4.4pi,red);
//ztick3(Label("$\pi$",align=-3X),pi,-X,red);
//ztick3(Label("$2\pi$",align=-3X),2pi,-X,red);
