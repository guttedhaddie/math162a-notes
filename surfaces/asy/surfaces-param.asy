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

//import graph;
import graph3;
import solids;



size(0,170);

currentprojection=perspective(10,-1,3);

triple P(pair u){return (Cos(u.x)*Cos(u.y),Cos(u.x)*Sin(u.y),-Sin(u.x));}
triple Q(pair u){return (-Sin(u.x)*Sin(u.y),Sin(u.x)*Cos(u.y),0);}

triple p(real t){return dir(t,0);}
triple c(real t){return dir(90-t,45);}

path3 p3=graph(p,15,75);

revolution s3=revolution(p3,Z,0,90);
draw(surface(s3),gray+opacity(0.6));


triple PP=dir(45,45);
triple Pu=0.4*unit(P((45,45)));
triple Pv=0.4*unit(Q((45,45)));
draw(Label("$\mathbf{x}_v(p)$",Relative(0.8)),PP--PP-Pu,2PP,blue,Arrow3);
draw(Label("$\mathbf{x}_u(p)$",Relative(0.8)),PP--PP+Pv,2PP,heavygreen,Arrow3);

int n=6;
int m=6;

for(int i=1; i<=m-1; ++i){
	triple V(real t){return dir(15+60*i/m,t);}
	draw(graph(V,0,90),heavygreen+linewidth(0.5));
	}
	
for(int i=1; i<=n-1; ++i){
	triple H(real t){return dir(t,90*i/n);}
	draw(graph(H,15,75),blue+linewidth(0.5));
	}


path3 pl=PP+Pu+Pv--PP+Pu-Pv--PP-Pu-Pv--PP-Pu+Pv--cycle;
draw(surface(pl),brown+opacity(0.5));

label("$T_PS$",PP+Pu+Pv,Y,brown);
label("$S$",dir(10,50),0.6grey+0.4black);

draw(Label("$\mathbf{n}(p)$",Relative(0.8),align=-Pu),PP--1.5PP,brown,Arrow3);
dot("$P$",PP,X+Y,red);

//xaxis3(Label("$x$"),-1.2,1.3,red,Arrow3);
//yaxis3(Label("$y$"),-1.2,1.3,red,Arrow3);
//zaxis3(Label("$z$"),-1.2,1.3,red,Arrow3);

