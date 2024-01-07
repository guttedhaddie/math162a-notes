settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;


size(240);

pair X(real t){return (log(t+sqrt(1+t^2)),sqrt(1+t^2));}
pair I(real t){return (log(t+sqrt(1+t^2))-t/(sqrt(1+t^2)),1/(sqrt(1+t^2)));}
pair T(real t){return (log(t+sqrt(1+t^2)),0);}


path bx=box((-X(4).x,-0.8),(X(4).x,X(4).y));

xaxis(-X(4).x,X(4).x,red,RightTicks(new real[]{-4,-3,-2,-1,0,1,2,3,4}));
yaxis(0,X(4).y,red,LeftTicks(new real[]{1,2,3,4}));


int n=15;

	for(int j=-n; j<=n; ++j){
		draw(T(10j/n)--I(10j/n),orange);
		draw(I(10j/n)--X(10j/n),grey);
		}

draw(graph(X,-4,4),blue+linewidth(1));
draw(graph(I,-11,11),heavygreen+linewidth(1));


	clip(bx);
