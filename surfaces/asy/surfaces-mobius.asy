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


size(100);

currentprojection=perspective(2,-6,4);

triple F(pair u){return ((2+u.y*cos(u.x/2))*cos(u.x),(2+u.y*cos(u.x/2))*sin(u.x),u.y*sin(u.x/2));}

surface s=surface(F,(0,-1),(2pi,1),400,10);

int m=4;
for(int i=0; i <= m; ++i) {
triple G(real t){return F((t,-1+2*i/m));}
draw(graph(G,0,2pi,operator ..),heavygreen+linewidth(0.5));
}

int n=16;
for(int i=0; i <= n; ++i) {
triple H(real t){return F((2pi*i/n,t));}
draw(graph(H,-1,1,operator ..),blue+linewidth(0.5));
}

triple H(real t){return F((0,t));}
draw(graph(H,-1,1,operator ..),blue+linewidth(1.5));


draw(s,gray+opacity(0.6));

//triple U(real t){return F((t,0));}
//draw(graph(U,0,4pi),heavygreen+linewidth(1));

//xaxis3(YZZero(align=-Z),red);
//,OutTicks(new real[]{-2,2}));
//yaxis3(XZZero(align=-Z),red);
//,OutTicks(new real[]{-2,2}));
//zaxis3(red);
//ztick3(Label("$4\pi$",align=-3X),4pi,-X,red);
//ztick3(Label("$2\pi$",align=-3X),2pi,-X,red);
