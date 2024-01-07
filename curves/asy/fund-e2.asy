settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(0,100);

	
void frame(pair X, real th){draw("$\mathbf{T}(t)$",X--X+dir(th),Arrow);
	draw("$\mathbf{N}(t)$",X--X+dir(90+th),Arrow);
	draw(X+0.1dir(th)--X+0.1dir(th)+0.1dir(90+th)--X+0.1dir(90+th));
	}

real s=-90;
real t=45;
real m=(s+t)/2;



real h=(dir(m)+dir(m-90)).y;
real r=(2*dir(m)).x;

draw(box((0,h),(r,1/sqrt(2))),white);

draw(arc((0,0),1,s,m),blue,Arrow(Relative(0.5)));
draw(arc((0,0),1,m,t),blue,Arrow(Relative(0.5)));

frame(dir(m),m+90);