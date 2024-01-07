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

revolution ss=revolution(X--X+1.5Z,axis=Z);
draw(surface(ss),gray+opacity(0.6),render(compression=Low,merge=true));

triple P(pair u){return (cos(u.x),sin(u.x),u.y);}

void fram(pair u){
	triple T=(cos(u.x),sin(u.x),0);
	triple N=(-sin(u.x),cos(u.x),0);
	triple B=(0,0,1);
	draw(P(u)--P(u)+d*T,red,Arrow3);
	draw(P(u)--P(u)+d*N,blue,Arrow3);
	draw(P(u)--P(u)+d*B,heavygreen,Arrow3);
	}

real h=0.4;

int m=2;
int n=6;
for(int j=0; j<m; ++j){
	for(int k=0; k<n; ++k){
		fram((2*pi*k/n,h*2j));
		fram((2*pi*(k+0.5)/n,h*(2j+1)));
		}
	}
	

//xaxis3("$x$",red,Arrow3);
//yaxis3("$y$",red,Arrow3);
//zaxis3("$z$",red,Arrow3);

