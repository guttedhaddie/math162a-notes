settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(240);

pair X(real t){return (cos(t),sin(t));}
pair T(real t){return (-sin(t),cos(t));}
pair I(real t){return X(t)-t*T(t);}


//path bx=box((-3pi/2,-2pi),(4,pi));


xaxis(-3pi/2,2.2,red,RightTicks(new real[]{-4,-2,2}));
yaxis(-2pi,pi,red,LeftTicks(new real[]{-6,-4,-2,2,4,6}));


int n=30;


	for(int j=0; j<=n; ++j){
		draw(X(2*pi*j/n)--I(2*pi*j/n),grey);
		}
		
		
draw(graph(X,0,2*pi),blue+linewidth(1),Arrow(size=6,Relative(0.18)));
draw(graph(I,0,2pi),heavygreen+linewidth(1),Arrow(size=6,Relative(0.18)));

//	clip(bx);
	