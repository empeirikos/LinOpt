import geometry;
size(7.5cm,0);
pen bpp=linewidth(bp); 

point A=(1,0); //dot("A", A, SW);
point B=(2,2); //dot("B", B, N);
point C=(0,1);
//dot("C", C, -dir(C--A,C--B));
draw(A--B--C--cycle);

pair genC(pair a,real theta)
{
	real cs, ss ;
	cs = cos(pi/2-theta/2); 
	ss = sin(pi/2-theta/2);
	
	return (cs*a.x-ss*a.y,cs*a.x+ss*a.y)/2/sin(theta/2);
}

pen[] myColors = {red, green, blue, cyan, magenta, yellow};
transform t1;
pair c;
pair [] alphas={(0,0),(1,1),(0,1),(-1,0)}; 
int i=0;
for(pair a: alphas){
c = genC(a,pi/3);
t1= rotate(60,c) ;
point Ad = t1*A;
point Bd = t1*B;
point Cd = t1*C;
//dot("$A_{"+string(a)+"}$", Ad, SW);
//dot("$B_{"+string(a)+"}$", Bd, SW);
//dot("$C_{"+string(a)+"}$", Cd, SW);
draw(Ad--Bd--Cd--cycle,myColors[i]);
draw((c+(-.15,0))--(c+(.15,0)),myColors[i]);  draw((c+(0,-.15))--(c+(0,.15)),myColors[i]);
label("$a=("+string(a.x)+","+string(a.y)+")$",c,3S);
i=i+1;
}

//draw(((-.15,0))--((.15,0)));  draw(((0,-.15))--((0,.15)));
