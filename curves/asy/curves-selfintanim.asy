if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
settings.compact=true;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import animation;

size(200);

pair P(real t){return (sin(2t/3),cos(t));}
pair Q(real t){return ((2/3)*cos(2t/3),-sin(t));}

picture pic;

draw(pic,graph(P,0,3pi,operator..),Arrow(Relative(0.15)));
draw(pic,graph(P,3pi,6pi,operator..),Arrow(Relative(0.75)));

xaxis(pic,-1.2,1.2,red,RightTicks(new real[]{-1,1}));
yaxis(pic,-1.2,1.2,red,LeftTicks(new real[]{-1,1}));

label("$x$",(1.2,-0.2),red);
label("$y$",(-0.2,1.2),red);

void tang(real t){draw(P(t)--P(t)+Q(t),blue,Arrow);
	dot(P(t),red);}

animation A;

int n=50;
for(int i=0; i<=n; ++i){
	save();
	add(pic);
	tang(6pi*i/n);
	A.add();
	restore();
	}

label(A.pdf("controls",multipage=false),fontsize(5));