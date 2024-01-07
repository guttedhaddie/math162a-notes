settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(180);

pair X(real t){return (t,t^2);}
real r(real t){return ((1+4t^2)^(3/2))/2;}
pair T(real t){return unit((1,2t));}
pair N(real t){return unit((-2t,1));}

path bx=box((-2,-0.6),(2,2.5));

void ocirc(real t,pen pen){
	draw(shift(X(t)+r(t)*N(t))*scale(r(t))*unitcircle,pen);
	dot(X(t),pen);
	dot(X(t)+r(t)*N(t),pen);
	draw(X(t)--X(t)+r(t)*N(t),dashed+pen);
	clip(bx);
	}


draw(graph(X,-sqrt(3),sqrt(3)),black+linewidth(1.0));

ocirc(-0.8,deepgreen);
ocirc(0,orange);
ocirc(0.3,purple);
ocirc(0.6,blue);


xaxis(-2.0,2.0,red,RightTicks(new real[]{-2,-1,0,1,2}));
yaxis(0,2.5,red,LeftTicks(new real[]{1,2,3}));

