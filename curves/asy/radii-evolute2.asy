settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(220);

pair X(real t){return (t,t^2);}
real r(real t){return ((1+4t^2)^(3/2))/2;}
pair T(real t){return unit((1,2t));}
pair N(real t){return unit((-2t,1));}

pair e(real t){return (-4t^3,0.5+3t^2);}

path bx=box((-4.2,-0.8),(4.2,4.5));

void ocirc(real t){
	draw(shift(X(t)+r(t)*N(t))*scale(r(t))*unitcircle);
	dot(X(t),blue);
	clip(bx);
	}


draw(graph(X,-2,2),blue+linewidth(1));
xaxis(-4.2,4.2,red,RightTicks(new real[]{-4,-3,-2,-1,0,1,2,3,4}));
yaxis(0,4.5,red,LeftTicks(new real[]{1,2,3,4}));


int n=12;

for(int j=-n; j<=n; ++j){
	draw(e(j/n)--X(j/n),grey);
}
	
draw(graph(e,-1,1),heavygreen+linewidth(1));





