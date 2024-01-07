settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");


import graph;

size(120,0);

pair p=(1.3,1.8);


real w=1.1;
real h=1.5;

int n=15;
for(int i=-n; i<=n; ++i){
real H=(0.8+0.2*unitrand())*h;
	draw(p+(w*i/n,H)--p+(w*i/n,-H),heavygreen);
}

draw(p-(w,0)--p+(w,0),blue);
dot("$p$",p,SE,blue);

xaxis("$u$",0,2.8,red);
yaxis("$v$",0,3.5,red);
xtick(Label("$u_0$",align=S),p.x,S,red);
ytick(Label("$v_0$",align=W),p.y,W,red);