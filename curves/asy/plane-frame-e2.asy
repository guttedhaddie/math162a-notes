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

import graph;

size(200);

picture neg;

void fram(pair X, real th){draw(neg,"$\mathbf{T}(t)$",X--X+dir(th),dir(th+90),Arrow);
	draw(neg,"$\mathbf{N}(t)$",X--X+dir(90+th),dir(180+th),Arrow);
	draw(neg,X+0.1dir(th)--X+0.1dir(th)+0.1dir(90+th)--X+0.1dir(90+th));
	}
	
void frame(pair X, real th){draw("$\mathbf{T}(t)$",X--X+dir(th),Arrow);
	draw("$\mathbf{N}(t)$",X--X+dir(90+th),Arrow);
	draw(X+0.1dir(th)--X+0.1dir(th)+0.1dir(90+th)--X+0.1dir(90+th));
	}

real s=-90;
real t=45;
real m=(s+t)/2;


draw(neg,arc((0,0),1,m,s),blue,Arrow(Relative(0.5)));
draw(neg,arc((0,0),1,t,m),blue,Arrow(Relative(0.5)));

fram(dir(m),m-90);
label(neg,"$\kappa<0$",dir(m),-2dir(m));

draw(arc((0,0),1,s,m),blue,Arrow(Relative(0.5)));
draw(arc((0,0),1,m,t),blue,Arrow(Relative(0.5)));

frame(dir(m),m+90);
label("$\kappa>0$",dir(m),2dir(m));

add(shift((2,0))*neg);
