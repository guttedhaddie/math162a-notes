settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200);


draw(unitcircle,blue,Arrow(Relative(0.4)));

xaxis(-1.2,1.2,red,RightTicks(new real[]{-1,1}));
yaxis(-1.2,1.2,red,LeftTicks(new real[]{-1,1}));

label("$x$",(1.2,-0.2),red);
label("$y$",(-0.2,1.2),red);

void fram(pair X, real th){draw(Label("$\mathbf{e}_1(t)$",Relative(0.8)),X--X+dir(th),Arrow);
	draw(Label("$\mathbf{e}_2(t)$",Relative(0.8)),X--X+dir(90+th),Arrow);
	draw(X+0.1dir(th)--X+0.1dir(th)+0.1dir(90+th)--X+0.1dir(90+th));
	dot(X,red);
	}


fram(dir(20),40);
fram(dir(220),440);
fram(dir(320),640);
