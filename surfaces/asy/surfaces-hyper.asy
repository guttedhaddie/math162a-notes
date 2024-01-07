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
import graph;
import graph3;


size(220);

currentprojection=perspective(6,-4,3);

triple F(pair u){return (sqrt(1+u.x^2)*cos(u.y),sqrt(1+u.x^2)*sin(u.y),u.x);}

surface s=surface(F,(-3,0),(3,2pi),120);


triple C(real t){return (cos(t),sin(t),0);}
triple DD(real t){return (-sin(t),cos(t),1);}
triple EE(real t){return (sin(t),-cos(t),1);}

int n=10;
for(int i=0; i<n; ++i){
draw(C(2pi*i/n)+3DD(2pi*i/n)--C(2pi*i/n)-3DD(2pi*i/n),blue);
draw(C(2pi*i/n)+3EE(2pi*i/n)--C(2pi*i/n)-3EE(2pi*i/n),heavygreen);
	}

draw(s,gray+opacity(0.6),render(compression=Low,merge=true));

xaxis3("$x$",YZZero(align=-Z),-3.5,3.5,red);
//,OutTicks(new real[]{-4,0,4}));
yaxis3("$y$",XZZero(align=-Z),-3.5,3.5,red);
//,OutTicks(new real[]{-4,4}));
zaxis3(Label("$z$",align=-X),-3.5,3.5,red);
//ztick3(Label("$\pi$",align=-3X),pi,-X,red);
//ztick3(Label("$2\pi$",align=-3X),2pi,-X,red);
