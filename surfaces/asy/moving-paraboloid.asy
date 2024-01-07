settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
settings.outformat="html";

//PDF
if(!settings.multipleView) settings.batchView=false;
settings.render=4;settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import graph3;
import solids;

size(0,120);

currentprojection=perspective(6,-4,3);

real a=0;
real b=1.2;

real f(real x){return x^2;}
triple F(real x){return (x,0,x^2);}

triple P(pair u){return (u.x*cos(u.y),u.x*sin(u.y),f(u.x));}
int n=6;
revolution ss=revolution(graph(F,a,b,n,operator ..),axis=Z);
draw(surface(ss),gray+opacity(0.8),render(compression=Low,merge=true));

real d=0.35;

void fram(pair u){
	triple T=unit((cos(u.y),sin(u.y),2*u.x));
	triple N=unit((-sin(u.y),cos(u.y),0));
	triple B=cross(T,N);
	draw(P(u)--P(u)+d*T,red,Arrow3);
	draw(P(u)--P(u)+d*N,blue,Arrow3);
	draw(P(u)--P(u)+d*B,heavygreen,Arrow3);
	}

int n=4;
for(int k=0; k<n; ++k){
	fram((0.33b,2*pi*k/n));
	}
	
int n=4;
for(int k=0; k<n; ++k){
	fram((0.6b,2*pi*(k+0.5)/n));
	}
	
	
int n=8;
for(int k=0; k<n; ++k){
	fram((0.85b,2*pi*(k+0.5)/n));
	}


//xaxis3(Label("$x$"),0,1.1b,red,Arrow3);
//yaxis3(Label("$y$"),-3.2,3.4,red,Arrow3);
//zaxis3(Label("$z$"),-3.2,3.4,red,Arrow3);

