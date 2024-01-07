settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(260);

int n=12;
int m=6;

for(int i=-m+1; i<=m-1; ++i){
	draw((0,90*i/m)--(360,90*i/m),heavygreen+opacity(0.5));
	}
	
for(int i=1; i<=n-1; ++i){
	triple H(real t){return dir(t,360*i/n);}
	draw((360*i/n,-90)--(360*i/n,90),blue+opacity(0.5));
	}
	
draw((0,-90)--(360,-90),heavygreen+dashed+opacity(0.5));
draw((0,90)--(360,90),heavygreen+dashed+opacity(0.5));
draw((0,-90)--(0,90),blue+dashed+opacity(0.5));
draw((360,-90)--(360,90),blue+dashed+opacity(0.5));
draw((0,0)--(360,0),red);
	
pair pp=(90,30);
draw(Label("$\frac{\partial}{\partial\phi}\big|_p$",Relative(1),align=W),pp--pp+(0,60),blue+linewidth(1),Arrow(8pt));
draw(Label("$\frac{\partial}{\partial\theta}\big|_p$",Relative(1),align=dir(70)),pp--pp+(60,0),heavygreen+linewidth(1),Arrow(8pt));
dot(pp,red);

xaxis(Label("$\theta$"),0,400,red,Arrow);
yaxis(Label("$\phi$"),-90,140,red,Arrow);
xtick(Label("$\frac\pi 2$",align=S),90,S,red);
xtick(Label("$\frac{3\pi}2$",align=S),270,S,red);
xtick(Label("$2\pi$",align=S),360,S,red);
xtick(Label("$\pi$",align=S),180,S,red);
ytick(Label("$0$",align=W),0,W,red);
ytick(Label("$\frac\pi 2$",align=W),90,W,red);
ytick(Label("$-\frac\pi 2$",align=W),-90,W,red);


draw("$\mathbf{x}$",(400,40)..(500,60){E},Arrow);

//draw("$\mathbf{x}$",(180,-100)..(200,-150)..(180,-200),Arrow);
