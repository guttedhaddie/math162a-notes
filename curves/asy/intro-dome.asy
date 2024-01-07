settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.outformat="png";

//HTML - opacity fine
//settings.outformat="html";

//PDF
if(!settings.multipleView) settings.batchView=false;
settings.render=4;settings.outformat="pdf";

import graph;
import three;

size(0,100);

currentprojection=perspective(10,-7,7);
draw(unithemisphere,lightgray);

for(int i=1; i<=5; ++i){
	draw(shift(0,0,sin(pi/2*i/5))*scale3(cos(pi/2*i/5))*unitcircle3);
	}


