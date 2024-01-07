settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,100);

pair P(real t){return (t*cos(t),t*sin(t));}

draw(graph(P,0.1,3pi));