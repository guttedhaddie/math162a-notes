if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=0;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import graph3;
import solids;

size(0,100);

currentprojection=perspective(10,-10,7);

real a=0;
real b=2pi;

real f(real x){return 2+cos(x);}
triple F(real x){return (x,2+cos(x),0);}

triple P(pair z){return (z.x,f(z.x)*cos(z.y),f(z.x)*sin(z.y));}
int n=6;
revolution ss=revolution(graph(F,a,b,n,operator ..),axis=X);
draw(surface(ss),green+opacity(0.5));
//draw(ss,7);

for(int i=0; i <= 2n; ++i) {
triple F(real t){return (t,f(t)*cos(pi*i/n),f(t)*sin(pi*i/n));}
draw(graph(F,0,2pi,n,operator ..),linewidth(0.2));
}

for(int i=0; i <= n; ++i) {
triple FF(real t){return (2pi*i/n,f(2pi*i/(n))*cos(t),f(2pi*i/(n))*sin(t));}
draw(graph(FF,0,2pi,2n,operator ..),linewidth(0.2));
}

//draw(P((b,0))--(b,0,0),dashed);
//draw((b,0,0)--P((b,pi/3)),dashed);
//label("$v$",(1/3)*(2*(b,0,0)+P((b,pi/6))));
//draw(arc((b,0,0),1.2,90,90,30,90,-X),dashed,Arrow3);

//string[] labels={"$\frac\pi 2$","$\pi$","$\frac{3\pi}2$","$2\pi$"}; 

//xaxis3(Label("$x$"),0,1.1b,red,OutTicks(new string(real x) {
//           return labels[round(2x/pi)-1];},new real[]{pi/2,pi,3pi/2,2pi}),Arrow3);
//yaxis3(Label("$y$"),-3.2,3.2,red,OutTicks(new real[]{-3,-2,-1,1,2,3}),Arrow3);
//zaxis3(Label("$z$"),-3.2,3.2,red,OutTicks(new real[]{-3,-2,-1,1,2,3}),Arrow3);

