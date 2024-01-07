settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
//settings.outformat="html";

//PDF
if(!settings.multipleView) settings.batchView=false;
settings.render=4;settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

//import graph;
import graph3;
import solids;

size(0,180);

currentprojection=perspective(2,3,2.5);

draw(unitsphere,gray+opacity(0.4));

triple S(pair u){return dir(90-u.y,u.x);}
triple Q(pair u){return (-Sin(u.x)*Cos(u.y),Cos(u.x)*Cos(u.y),0);}
triple P(pair u){return (-Cos(u.x)*Sin(u.y),-Sin(u.x)*Sin(u.y),Cos(u.y));}

int n=12;
int m=12;

for(int i=1; i<=m-1; ++i){
	triple V(real t){return dir(180*i/m,t);}
	draw(graph(V,0,360),heavygreen+linewidth(0.3));
	}
	
for(int i=1; i<=n-1; ++i){
	triple H(real t){return dir(t,360*i/n);}
	draw(graph(H,0,180),blue+linewidth(0.3));
	}
	
triple HH(real t){return dir(t,0);}
	draw(graph(HH,0,180),blue+dashed);
	
pair pp=(90,30);
triple PP=S(pp);
draw(Label("$\mathbf{x}_\theta(p)$",Relative(0.9)),PP--PP+Q(pp),Z,heavygreen,Arrow3);
draw(Label("$\mathbf{x}_\phi(p)$",Relative(0.9)),PP--PP+P(pp),-X,blue,Arrow3);
dot(PP,red);


xaxis3(Label("$x$"),-1.2,1.3,red,Arrow3);
yaxis3(Label("$y$"),-1.2,1.3,red,Arrow3);
zaxis3(Label("$z$"),-1.2,1.3,red,Arrow3);

