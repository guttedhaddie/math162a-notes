settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
settings.outformat="html";

//PDF
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import graph3;
//import solids;

size(0,120);

currentprojection=perspective(0.5,-2,1);

triple P(pair u){return (u.x,u.y,0.5u.x^2);}

real a=4;
real b=4;

surface ss=surface(P,(-b,-a),(b,0.8a),100);
draw(ss,gray+opacity(0.8),render(compression=Low,merge=true));

real d=1;

void fram(pair u){
	triple T=unit((1,0,u.x));
	triple N=(0,1,0);
	triple B=cross(T,N);
	draw(P(u)--P(u)+d*T,red,Arrow3(size=6));
	draw(P(u)--P(u)+d*N,blue,Arrow3(size=6));
	draw(P(u)--P(u)+d*B,heavygreen,Arrow3(size=6));
	}

int n=2;
for(int k=-n; k<n; ++k){
	fram((-0.9*b,a*k/n));
	fram((-0.68*b,a*k/n));
	fram((-0.35*b,a*k/n));
	fram((0.35b,a*k/n));
	fram((0.68b,a*k/n));
	fram((0.9b,a*k/n));
	}
	



//xaxis3(Label("$x$"),0,1.1b,red,Arrow3);
//yaxis3(Label("$y$"),-3.2,3.4,red,Arrow3);
//zaxis3(Label("$z$"),-3.2,3.4,red,Arrow3);

