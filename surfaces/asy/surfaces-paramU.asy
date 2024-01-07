settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(240,170,IgnoreAspect);

fill(box((0,15),(90,70)),grey+opacity(0.5));

int n=6;
int m=6;

for(int i=1; i<=m-1; ++i){
	draw((90*i/n,15)--(90*i/n,70),blue);
	}
	
for(int i=1; i<=n-1; ++i){
	draw((0,15+60*i/m)--(90,15+60*i/m),heavygreen);
	}
	
draw((0,15)--(90,15),heavygreen+dashed+opacity(0.5));
draw((0,70)--(90,70),heavygreen+dashed+opacity(0.5));
draw((0,15)--(0,70),blue+dashed+opacity(0.5));
draw((90,15)--(90,70),blue+dashed+opacity(0.5));
	
pair pp=(45,45);
draw(Label("$\frac{\partial}{\partial v}\big|_p$",Relative(0.8)),pp--pp+(0,20),blue+linewidth(1),Arrow(8pt));
draw(Label("$\frac{\partial}{\partial u}\big|_p$",Relative(0.8)),pp--pp+(30,0),heavygreen+linewidth(1),Arrow(8pt));
dot("$p$",pp,SW,red);

label("$U$",(82.5,30),0.6grey+0.4black);

draw("$\mathbf{x}$",(95,45)..(140,52){E},Arrow);

