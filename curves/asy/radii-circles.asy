settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(160);

void fram(pair X, real th){draw("$\mathbf{T}(t_0)$",X--X+dir(th),Arrow);
	draw("$\mathbf{N}(t_0)$",X--X+dir(90+th),Arrow);
	draw(X+0.1dir(th)--X+0.1dir(th)+0.1dir(90+th)--X+0.1dir(90+th));
	}

real s=-90;
real t=45;
real m=(s+t)/2;

draw(arc((0,0),1,s,m),blue,Arrow(Relative(0.5)));
draw(arc((0,0),1,m,t),blue,Arrow(Relative(0.5)));

fram(dir(m),m+90);

for(int i=1; i<=4; ++i){
	draw(shift((1-i/8)*dir(m))*scale(i/8)*unitcircle,heavygreen,ArcArrow(Relative(0.3)));
	draw(shift((1+i/8)*dir(m))*scale(i/8)*reverse(unitcircle),heavygreen,ArcArrow(Relative(0.9)));
	}
	
label("$r>0$",0.8dir(-75));
label("$r<0$",1.67dir(-35));


