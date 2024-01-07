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


import graph;
import graph3;

size(160);

picture bac;

currentprojection=perspective(6,5,4);

triple F(pair u){return (u.x,u.y,u.x^2-u.y^2);}

real r=0.5;
surface s=surface(F,(-r,-r),(r,r),120);

//draw(bac,s,gray+opacity(0.5),render(compression=Low,merge=true));
//label(bac,"$S$",F((-r,0.75r))+0.07Z,grey);

real rr=0.3;

void normpl(real th){
	draw(Label("$\mathbf{v}_P$",align=-Z,Relative(1)),(0,0,0)--(rr*cos(th),rr*sin(th),0),heavygreen,Arrow3);
	path3 P=(-r*cos(th),-r*sin(th),-rr)--(r*cos(th),r*sin(th),-rr)--(r*cos(th),r*sin(th),rr)--(-r*cos(th),-r*sin(th),rr)--cycle;
	draw(surface(P),lightred+opacity(0.5));
	//label("$\Pi(\mathbf{v}_P)$",(-r*cos(th),-r*sin(th),rr)+0.1Z,lightred);
	triple c(real t){return F((t*cos(th),t*sin(th)));}
	draw(Label("$\mathbf y$",Relative(0.8),align=Z),graph(c,-r,r),blue+linewidth(1));
	draw(Label("$\psi$",align=(cos(th/2),sin(th/2),0)),arc(O,0.1X,0.1(cos(th),sin(th),0)),heavygreen,ArcArrow3);
}


draw(s,gray+opacity(0.5),render(compression=Low,merge=true));
normpl(pi-pi/6);


xaxis3("$x$",YZZero(align=-Z),red,OutTicks(new real[]{-1,1}));
yaxis3("$y$",XZZero(align=-Z),red,OutTicks(new real[]{-1,1}));
zaxis3(Label("$z$",align=-X),red);
