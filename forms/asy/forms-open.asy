settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(120);

filldraw(2dir(0)..1.2dir(90)..1.4dir(120)..1.1dir(160)..1.5dir(180)..1.2dir(250)..1.2dir(300)..cycle,lightblue+white,dashdotted+blue+linewidth(1));

//pair p=(0.3,0);
//real r=0.6;

//filldraw(shift(p)*scale(r)*unitcircle,lightgreen+white,dashdotted+heavygreen+linewidth(1));
//dot("$p$",p,SW,heavygreen);
//draw("$r_p$",p--p+r*dir(60),heavygreen);
label("$U$",(-0.5,-0.2),blue);

//dot("$u$",p+0.2dir(-20),SE,red);

//label("$B(p,r_p)$",dir(-60),dir(-60),heavygreen);


//dot("$q$",(1.5,-2.5),W);
//draw(shift((1.5,-2.5))*scale(0.35)*unitcircle,dashed+red+linewidth(1));
//label("$B(q,r_q)$",(1.5,-2.5)+0.34dir(210),dir(210),red);
