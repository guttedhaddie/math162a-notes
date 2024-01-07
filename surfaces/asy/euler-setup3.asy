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

currentprojection=perspective(5,7,3);

triple F(pair u){return (u.x,u.y,u.x^2-u.y^2);}

real r=0.5;
surface s=surface(F,(-r,-r),(r,r),120);

dotfactor=6;

real rr=0.3;

void parapl(real c){
	real d=rr/(abs(sqrt(c)));
	real dd=log(d+sqrt(d^2-1));
	path3 P=(-rr,-rr,c)--(-rr,rr,c)--(rr,rr,c)--(rr,-rr,c)--cycle;
	draw(surface(P),lightblue+opacity(0.5));
	triple p(real t){return F((cosh(t),sinh(t))*(abs(sqrt(c))));}
	draw(graph(p,-dd,dd),blue+linewidth(1));
	triple q(real t){return F((-cosh(t),-sinh(t))*(abs(sqrt(c))));}
	draw(graph(q,-dd,dd),blue+linewidth(1));
	dot(O,blue);
}

draw(s,gray+opacity(0.5),render(compression=Low,merge=true));
parapl(0.02);

void parapl2(real c,real u,real v){
real z(real x, real y){return c+2u*(x+2u)-2v*(y-2v);}
real ct=sqrt(c+5*u^2+3*v^2);
triple PP(real t){return (u+ct*cosh(t),v+ct*sinh(t),z(u+ct*cosh(t),v+ct*sinh(t)));} 
triple QQ(real t){return (u-ct*cosh(t),v-ct*sinh(t),z(u-ct*cosh(t),v-ct*sinh(t)));} 
real dd=1.1;
	triple C=F((u,v));
	triple Cu=(1,0,2*u);
	triple Cv=(0,1,-2*v);
	triple n=(-2*u,2*v,1);
	path3 P=(-rr,-rr,z(-rr,-rr))--(-rr,1.6rr,z(-rr,1.6rr))--(1.6rr,1.6rr,z(1.6rr,1.6rr))--(1.6rr,-rr,z(1.6rr,-rr))--cycle;
	draw(surface(P),lightgreen+opacity(0.5));
	//triple p(real t){return F((u,0)+(cosh(t),sinh(t))*(abs(sqrt(ct+u^2))));}
	draw(graph(PP,-dd,dd),heavygreen+linewidth(1));
	draw(graph(QQ,-dd,dd),heavygreen+linewidth(1));
	dot(F((u,v)),heavygreen);
}

parapl2(-0.12,0.1,0.2);

xaxis3("$x$",YZZero(align=-Z),red,OutTicks(new real[]{-1,1}));
yaxis3("$y$",XZZero(align=-Z),red,OutTicks(new real[]{-1,1}));
zaxis3(Label("$z$",align=-X),red);
