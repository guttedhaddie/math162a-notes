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


import graph;
import graph3;


size(160);

currentprojection=perspective(4,-5,1.5);

triple F(pair u){return (u.x,u.y,u.x^2-u.y^2);}

real r=0.5;
surface s=surface(F,(-r,-r),(r,r),120);

draw(s,gray+opacity(0.5),render(compression=Low,merge=true));
label("$S$",F((-r,0.75r))+0.07Z,grey);

real rr=0.3;
path3 P=(-rr,-rr,0)--(rr,-rr,0)--(rr,rr,0)--(-rr,rr,0)--cycle;

draw(surface(P),lightred+opacity(0.5),render(compression=Low,merge=true));

label("$T_PS$",(-0.1rr,rr,0)+0.07Z,lightred);

triple xx(real t){return F((t,0));}
triple yy(real t){return F((0,t));}

draw(graph(xx,-r,r),heavygreen);
draw(graph(yy,-r,r),blue);

xaxis3("$x$",YZZero(align=-Z),red,OutTicks(new real[]{-1,1}));
yaxis3("$y$",XZZero(align=-Z),red,OutTicks(new real[]{-1,1}));
zaxis3(Label("$z$",align=-X),red);
//ztick3(Label("$\pi$",align=-3X),pi,-X,red);
//ztick3(Label("$2\pi$",align=-3X),2pi,-X,red);
