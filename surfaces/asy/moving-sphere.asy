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


real d=0.33;

draw(unitsphere,gray+opacity(0.8),render(compression=Low,merge=true));

void fram(pair u){
	triple T=(-sin(u.x),cos(u.x),0);
	triple N=(-cos(u.x)*sin(u.y),-sin(u.x)*sin(u.y),cos(u.y));
	triple B=cross(T,N);
	draw(B--B+d*T,red,Arrow3(size=5));
	draw(B--B+d*N,blue,Arrow3(size=5));
	draw(B--B+d*B,heavygreen,Arrow3(size=5));
	}

real h=0.4;

int n=5;
for(int k=0; k<n; ++k){
	fram((2*pi*k/n,pi/3));
	fram((2*pi*(k+1/4)/n,pi/6));
	fram((2*pi*(k-1/4)/n,pi/6));
	fram((2*pi*k/n,-pi/3));
	fram((2*pi*(k+1/4)/n,-pi/6));
	fram((2*pi*(k-1/4)/n,-pi/6));
	fram((2*pi*k/n,0));
	fram((2*pi*(k+1/2)/n,0));
	}
	

//xaxis3("$x$",red,Arrow3);
//yaxis3("$y$",red,Arrow3);
//zaxis3("$z$",red,Arrow3);

