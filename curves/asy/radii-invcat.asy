settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;
import animation;

size(260);

pair X(real t){return (log(t+sqrt(1+t^2)),sqrt(1+t^2));}
pair I(real t){return (log(t+sqrt(1+t^2))-t/(sqrt(1+t^2)),1/(sqrt(1+t^2)));}
pair T(real t){return (log(t+sqrt(1+t^2)),0);}


path bx=box((-X(4).x,-0.8),(X(4).x,X(4).y));

picture P;
animation A;

draw(P,graph(X,-4,4),blue+linewidth(1));
draw(P,graph(I,-11,11),heavygreen+linewidth(1));
xaxis(P,-X(4).x,X(4).x,red,RightTicks(new real[]{-4,-3,-2,-1,0,1,2,3,4}));
yaxis(P,0,X(4).y,red,LeftTicks(new real[]{1,2,3,4}));


int n=15;

/*
	save();
	for(int j=-n; j<=n; ++j){
		draw(T(10j/n)--I(10j/n),orange);
		draw(I(10j/n)--X(10j/n),grey);
		}
	//draw(graph(e,-1,1),heavygreen);
	add(P);
	clip(bx);
	A.add();
	restore();
*/	
	
for(int i=-n; i<=n; ++i){
	save();
	dot(T(10i/n),orange);
	dot(I(10i/n),heavygreen);
	for(int j=-n; j<=i; ++j){
		draw(T(10j/n)--I(10j/n),orange);
		draw(I(10j/n)--X(10j/n),grey);
		}
	clip(bx);
	add(P);
	//ocirc(i/n);
	//draw(graph(e,-1,i/n),heavygreen);
	A.add();
	restore();
	}


label(A.pdf("controls",multipage=false),fontsize(5));


