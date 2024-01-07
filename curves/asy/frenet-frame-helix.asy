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
import animation;

real M=2pi;

currentprojection=perspective(M/2,-3,1);

size(600);

real h=1;
real r=1;

triple XX(real t){return (h*t,r*cos(t),r*sin(t));}

triple FT(real t){return unit((h,-r*sin(t),r*cos(t)));}
triple FN(real t){return (0,-cos(t),-sin(t));}
triple FB(real t){return cross(FT(t),FN(t));}

void ffram(real t){
	draw("$\mathbf{T}$",XX(t)--XX(t)+FT(t),heavygreen,Arrow3);
	draw("$\mathbf{N}$",XX(t)--XX(t)+FN(t),orange,Arrow3);
	draw("$\mathbf{B}$",XX(t)--XX(t)+FB(t),darkblue,Arrow3);
	}

picture P;

animation A;

draw(P,graph(XX,0,M),blue);
xaxis3(P,"$x$",0,1.1*M*h,red);
yaxis3(P,"$y$",-1.1r,1.1r,red);
zaxis3(P,"$z$",-1.1r,1.1r,red);
xtick3(P,Label("$\pi$",red,align=-2Z),pi,-Z,red);
xtick3(P,Label("$2\pi$",red,align=-2Z),2pi,-Z,red);
//xtick3(P,Label("$3\pi$",red,align=-2Z),3pi,-Z,red);

int n=12;
	save();
	add(P);
	ffram(M/6);
	ffram(M/2);
	ffram(5M/6);
	A.add();
	restore();

for(int i=0; i<=n; ++i){
	save();
	add(P);
	ffram(M*i/n);
	A.add();
	restore();
	}

label(A.pdf("controls",multipage=false),fontsize(5));


