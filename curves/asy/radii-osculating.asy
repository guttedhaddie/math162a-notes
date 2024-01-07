settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;
import animate;

size(300);

pair X(real t){return (t,t^2);}
real r(real t){return ((1+4t^2)^(3/2))/2;}
pair T(real t){return unit((1,2t));}
pair N(real t){return unit((-2t,1));}

path bx=box((-2.2,-0.8),(2.2,3.2));

void ocirc(real t){
	draw(shift(X(t)+r(t)*N(t))*scale(r(t))*unitcircle);
	dot(X(t));
	dot(X(t)+r(t)*N(t));
	draw(X(t)--X(t)+r(t)*N(t),dashed);
	clip(bx);
	}

picture P;
animation A;

draw(P,graph(X,-sqrt(3),sqrt(3)),blue);
xaxis(P,"$x$",-2.1,2.1,red,RightTicks(new real[]{-2,-1,0,1,2}));
yaxis(P,"$y$",0,3.2,red,LeftTicks(new real[]{1,2,3}));

	save();
	add(P);
	ocirc(0.4);
	A.add();
	restore();

int n=12;
for(int i=-n; i<=n; ++i){
	save();
	add(P);
	ocirc(i/n);
	A.add();
	restore();
	}


label(A.pdf("controls",multipage=false),fontsize(5));


