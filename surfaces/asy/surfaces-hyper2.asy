settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import graph3;
import solids;

size(0,150);

currentprojection=orthographic(10,-10,6);


triple F(real z){return (sqrt(-1+z^2),0,z);}

int n=20;
revolution ss=revolution(graph(F,1,4,n,operator ..),axis=Z);
draw(surface(ss),red+green+opacity(0.8));
revolution sss=revolution(graph(F,-4,-1,n,operator ..),axis=Z);
draw(surface(sss),red+green+opacity(0.8));


