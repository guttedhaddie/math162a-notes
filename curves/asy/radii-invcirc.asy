settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;
import animation;

size(260);

pair X(real t){return (cos(t),sin(t));}
pair T(real t){return (-sin(t),cos(t));}
pair I(real t){return X(t)-t*T(t);}


picture P;
animation A;

draw(P,graph(X,0,2*pi),blue+linewidth(1),Arrow(size=6,Relative(0.18)));
//draw(P,graph(I,0,2pi),heavygreen+linewidth(1),Arrow(size=6,Relative(0.18)));
xaxis(P,-3pi/2,2.2,red,RightTicks(new real[]{-4,-2,2}));
yaxis(P,-2pi,pi,red,LeftTicks(new real[]{-6,-4,-2,2,4,6}));


int n=30;
/*
	save();
	for(int j=0; j<=n; ++j){
		draw(X(2*pi*j/n)--I(2*pi*j/n),grey);
		}
	add(P);
	A.add();
	restore();
*/
	
for(int i=0; i<=n; ++i){
	save();
	for(int j=0; j<=i; ++j){
		draw(X(2*pi*j/n)--I(2*pi*j/n),grey);
		draw(graph(I,0,2pi*j/n),heavygreen+linewidth(1));
		}
	dot(X(2*pi*i/n),blue);
	dot(I(2*pi*i/n),heavygreen);
	add(P);
	A.add();
	restore();
	}


label(A.pdf("controls",multipage=false),fontsize(5));


