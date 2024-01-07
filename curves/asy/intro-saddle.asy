settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.outformat="png";

//HTML - opacity fine
//settings.outformat="html";

//PDF
if(!settings.multipleView) settings.batchView=false;
settings.render=16;settings.outformat="pdf";


texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import graph3;

size(0,100);

currentprojection=perspective(10,8,4);

triple P(pair z) {return (z.x*cos(z.y),z.x*sin(z.y),0.5*z.x^2*cos(2*z.y));}
triple Q(real t) {return (cos(t),sin(t),0.5*cos(2*t));}

path3 p=graph(Q,0,2pi,operator..)..cycle;

surface s=surface(P,(0,0),(1,2pi),40,160);


//xaxis3(Label("$x$"),-1,1,red,Arrow3);
//yaxis3(Label("$y$"),-1,1,red,Arrow3);
//zaxis3(Label("$z$"),-0.5,0.5,red,Arrow3);

draw(s,lightgray+opacity(0.6),render(merge=false));
//draw(p,blue);
//label("$S$",Q(pi/2),dir(pi/2,pi/2));

//draw("${\mathbf r}(u,v)$",O--P((0.7,9pi/8)),Arrow3);
//dot(P((0.7,9pi/8)),orange);
