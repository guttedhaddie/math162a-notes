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

draw(pic,unitcircle,blue,Arrow(Relative(0.6)));

xaxis(pic,-1.2,1.2,red,RightTicks(new real[]{-1,1}));
yaxis(pic,-1.2,1.2,red,LeftTicks(new real[]{-1,1}));

label("$x$",(1.2,-0.2),red);
label("$y$",(-0.2,1.2),red);

void tang(real t){
	draw(Label("$\mathbf{y}(s)$",align=I*P(t)),(0,0)--P(t),dashed,Arrow);
	draw(Label("$\mathbf{y}'(s)$",align=-I*Q(t),Relative(0.7)),P(t)--P(t)+Q(t),dashed+0.8blue+0.2white,Arrow);
	//dot(P(t),red);
	}

animation A;

int n=10;
for(int i=-4n; i<=6n; ++i){
	save();
	add(pic);
	tang(i/10);
	A.add();
	restore();
	}

label(A.pdf("controls",multipage=false),fontsize(5));