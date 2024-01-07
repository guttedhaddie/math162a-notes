settings.outformat="";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import animate;

size(200);

pair P(real t){return ((1-t^2)/(1+t^2),(2t)/(1+t^2));}
pair Q(real t){return ((-4t)/((1+t^2)^2),(2-2t^2)/((1+t^2)^2));}

picture pic;

draw(pic,unitcircle,blue,Arrow(Relative(0.4)));

xaxis(pic,-1.2,1.2,red,RightTicks(new real[]{-1,1}));
yaxis(pic,-1.2,1.2,red,LeftTicks(new real[]{-1,1}));

label("$x$",(1.2,-0.2),red);
label("$y$",(-0.2,1.2),red);

void fram(pair X, real th){draw(Label("$\mathbf{e}_1(t)$",Relative(0.8)),X--X+dir(th),Arrow);
	draw(Label("$\mathbf{e}_2(t)$",Relative(0.8)),X--X+dir(90+th),Arrow);
	draw(X+0.1dir(th)--X+0.1dir(th)+0.1dir(90+th)--X+0.1dir(90+th));
	dot(X,red);
	}


animation A;

int n=60;
for(int i=0; i<n; ++i){
	save();
	add(pic);
	fram(dir(360*i/n),720*i/n);
	A.add();
	restore();
	}

label(A.pdf("controls",multipage=false),fontsize(5));