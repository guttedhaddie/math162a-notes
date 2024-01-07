if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
//settings.prc=false;
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph3;


currentprojection=perspective(4,-3,1);

size(400);


triple XX(real t){return ((1/3)*(1+t)^(3/2),t/(sqrt(2)),(1/3)*(1-t)^(3/2));}

real a=1;

draw(graph(XX,-a,a),blue);
xaxis3("$x$",0,1.1,red,OutTicks(new real[]{1}));
yaxis3("$y$",-1.1,1.1,red,OutTicks(new real[]{-1,1}));
zaxis3("$z$",0,1.1,red,OutTicks(new real[]{1}));

triple FT(real t){return ((1/2)*(1+t)^(1/2),1/(sqrt(2)),-(1/2)*(1-t)^(1/2));}
triple FN(real t){return unit(((1/4)*(1+t)^(-1/2),0,(1/4)*(1-t)^(-1/2)));}
triple FB(real t){return cross(FT(t),FN(t));}

void ffram(real t){
	draw("$\mathbf{T}$",XX(t)--XX(t)+FT(t),heavygreen,Arrow3);
	draw("$\mathbf{N}$",XX(t)--XX(t)+FN(t),orange,Arrow3);
	draw("$\mathbf{B}$",XX(t)--XX(t)+FB(t),darkblue,Arrow3);
	}

ffram(-0.9);
ffram(0.7);