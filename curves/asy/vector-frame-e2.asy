settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(180);

void fram(pair X, real th){draw(Label("$\mathbf{e}_1(t)$",Relative(0.8)),X--X+dir(th),Arrow);
	draw(Label("$\mathbf{e}_2(t)$",Relative(0.8)),X--X+dir(90+th),Arrow);
	draw(X+0.1dir(th)--X+0.1dir(th)+0.1dir(90+th)--X+0.1dir(90+th));
	}

draw((0,0)..(1,1)..(2,0)..(4,2),blue,Arrow(Relative(0.72)));

fram((0,0),100);
//fram((1,1),50);
fram((2,0),-30);
fram((4,2),20);