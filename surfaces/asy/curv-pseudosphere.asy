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
import solids;

size(0,100);

currentprojection=perspective(4,-6,3);

real a=0;
real b=10;

triple trac(real t){return (log(t+sqrt(1+t^2))-t/(sqrt(1+t^2)),1/(sqrt(1+t^2)),0);}

real xx(real t){return log(t+sqrt(1+t^2))-t/(sqrt(1+t^2));}
real yy(real t){return 1/(sqrt(1+t^2));}

triple F(pair u){return (xx(u.y),yy(u.y)*cos(u.x),yy(u.y)*sin(u.x));}

int n=6;
revolution ss=revolution(graph(trac,a,b,n,operator ..),axis=X);
draw(surface(ss),gray+opacity(0.8),render(compression=Low,merge=true));

int n=20;
for(int i=0; i<=n; ++i){
triple H(real t){return F((4pi*i/n,t));}
draw(graph(H,0,10),blue);
	}
	
int n=15;
for(int i=0; i<=n; ++i){
triple H(real t){return F((t,b*i/n));}
draw(graph(H,0,2pi),heavygreen);
	}

//xaxis3(Label("$x$"),0,1.1b,red,Arrow3);
//yaxis3(Label("$y$"),-3.2,3.4,red,Arrow3);
//zaxis3(Label("$z$"),-3.2,3.4,red,Arrow3);

