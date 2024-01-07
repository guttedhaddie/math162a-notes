settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
//import animate;

size(145,0);

pair P(real t){return ((1-t^2)/(1+t^2),(2t)/(1+t^2));}
pair Q(real t){return ((-4t)/((1+t^2)^2),(2-2t^2)/((1+t^2)^2));}

picture pic;

draw(pic,unitcircle,blue,Arrow(Relative(0.9)));

xaxis(pic,-1.2,1.2,red);
yaxis(pic,-1.2,1.2,red);

label("$x$",(1.2,-0.2),red);
label("$y$",(-0.2,1.2),red);

void tang(real t,string s){
	draw(scale(0.7)*Label("$\mathbf{y}(" + (string) s +")$",align=I*P(t),Relative(0.7)),(0,0)--P(t),dashed,Arrow);
	draw(scale(0.7)*Label("$\mathbf{y}'(" + (string) s +")$",align=-I*Q(t),Relative(0.7),blue),P(t)--P(t)+Q(t),lightblue,Arrow);
	//dot(P(t),red);
	}

//animation A;

//int n=10;
//for(int i=-4n; i<=6n; ++i){
//	save();
	add(pic);
//	tang(i/10);
//	A.add();
//	restore();
//	}

tang(-2,"-2");
tang(0,"0");
tang(0.4,"0.4");
tang(3,"3");

//label(A.pdf("controls",multipage=false),fontsize(5));