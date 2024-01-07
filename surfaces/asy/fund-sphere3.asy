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

//import graph;
import graph3;
import solids;

size(0,150);

currentprojection=perspective(3,2,1);

draw(unitsphere,gray+opacity(0.4));

triple S(pair u){return dir(90-u.y,u.x);}
triple Q(pair u){return (-Sin(u.x)*Cos(u.y),Cos(u.x)*Cos(u.y),0);}
triple P(pair u){return (-Cos(u.x)*Sin(u.y),-Sin(u.x)*Sin(u.y),Cos(u.y));}

pair c(real t){return (2t,t^2/45);}
pair c(real t){return (2t,t);}
triple y(real t){return S(c(t));}

draw(graph(y,0,45),blue,Arrow3(Relative(0.5)));


triple g(real t){return y(0)*Cos(t)+y(45)*Sin(t);}

draw(graph(g,0,90),heavygreen,Arrow3(Relative(0.5)));


xaxis3(Label("$x$"),-1.2,1.3,red,Arrow3);
yaxis3(Label("$y$"),-1.2,1.3,red,Arrow3);
zaxis3(Label("$z$"),-1.2,1.2,red,Arrow3);

