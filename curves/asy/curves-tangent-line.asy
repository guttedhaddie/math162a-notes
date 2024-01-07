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

size(150);

pair O=(0,0);
pair A=(-1,2);
pair B=(1,2.5);

draw(A-0.5(B-A)--A+1.5(B-A));

dot("$A$",A,NW);
dot("$B$",B,N);
dot("$O$",O);
draw("$\mathbf{x}(0)=\mathbf{a}$",A--O);
draw(O--A,Arrow);
draw("$\mathbf{x}(1)=\mathbf{b}$",O--B,Arrow);
draw(A--B,Arrow);
draw("$\mathbf{b}-\mathbf{a}$",B--A);