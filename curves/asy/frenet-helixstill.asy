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

import graph3;
import three;


real h=1;
real r=1;
real v=sqrt(r^2+h^2);
real M=2pi*v;

//currentprojection=perspective(M/2,-3,1);

size(300);

triple XX(real s){return (r*cos(s/v),r*sin(s/v),h*s/v);}

triple FT(real s){return unit((-(r/v)*sin(s/v),(r/v)*cos(s/v),h/v));}
triple FN(real s){return unit((-(r/(v^2))*cos(s/v),-(r/(v^2))*sin(s/v),0));}
triple FB(real s){return cross(FT(s),FN(s));}

void ffram(real s){
	draw("$\mathbf{T}$",XX(s)--XX(s)+FT(s),heavygreen,Arrow3);
	draw("$\mathbf{N}$",XX(s)--XX(s)+FN(s),orange,Arrow3);
	draw("$\mathbf{B}$",XX(s)--XX(s)+FB(s),darkblue,Arrow3);
	}

picture P;

draw(P,graph(XX,0,M),blue);
dot(P,(-1.1,1.1,0),white);
dot(P,(1.1,-1.1,0),white);
xaxis3(P,"$x$",-1.1r,1.1r,red);
yaxis3(P,"$y$",-1.1r,1.1r,red);
zaxis3(P,"$z$",0,1.1*M*h/v,red);
//ztick3(P,Label("$\pi$",red,align=-2Z),pi,-Z,red);
//ztick3(P,Label("$2\pi$",red,align=-2Z),2pi,-Z,red);
//xtick3(P,Label("$3\pi$",red,align=-2Z),3pi,-Z,red);


	add(P);
	ffram(M/8);
	ffram(3M/8);
	ffram(5M/8);
	ffram(7M/8);

