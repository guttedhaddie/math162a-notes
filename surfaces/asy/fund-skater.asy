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


import graph;
import graph3;


size(200);

currentprojection=perspective(-4,-4,2.5);

triple F(pair u){return (u.x*cos(u.y),u.x*sin(u.y),0.5u.x^2);}

surface s=surface(F,(0,0),(1,2pi),120);

triple S(real t){return F((1-t,4t^2));}

draw(s,gray+opacity(0.5),render(compression=Low,merge=true));

draw(graph(S,0,1),blue);

for(int i=0; i<=10; ++i){
	dot(S(i/10),red);
	}

//xaxis3("$x$",YZZero(align=-Z),-3.5,3.5,red);
//,OutTicks(new real[]{-4,0,4}));
//yaxis3("$y$",XZZero(align=-Z),-3.5,3.5,red);
//,OutTicks(new real[]{-4,4}));
//zaxis3(Label("$z$",align=-X),-3.5,3.5,red);
//ztick3(Label("$\pi$",align=-3X),pi,-X,red);
//ztick3(Label("$2\pi$",align=-3X),2pi,-X,red);
