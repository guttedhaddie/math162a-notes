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

size(0,125);

currentprojection=perspective(6,-4,3);


real d=0.33;

triple P(triple u){return (u.x*cos(u.y),u.x*sin(u.y),u.z);}

void fram(triple u){
	triple T=(cos(u.y),sin(u.y),0);
	triple N=(-sin(u.y),cos(u.y),0);
	triple B=(0,0,1);
	draw(P(u)--P(u)+d*T,orange,Arrow3);
	draw(P(u)--P(u)+d*N,blue,Arrow3);
	draw(P(u)--P(u)+d*B,heavygreen,Arrow3);
	}

int m=4;
int n=4;
for(int j=0; j<m; ++j){
	for(int k=0; k<n; ++k){
		fram((1,2*pi*k/n,j));
		}
	}
	
int m=4;
int n=6;
for(int j=0; j<m; ++j){
	for(int k=0; k<n; ++k){
		fram((2,2*pi*(k+0.5)/n,j));
		}
	}

xaxis3("$x$",red,Arrow3);
yaxis3("$y$",red,Arrow3);
zaxis3("$z$",red,Arrow3);

