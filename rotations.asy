import geometry;
size(7.5cm,0);
pen bpp=linewidth(bp); 

point A=(1,0); //dot("A", A, SW);
point B=(2,2); //dot("B", B, N);
point C=(0,1);
//dot("C", C, -dir(C--A,C--B));
draw(A--B--C--cycle);

transform t1;
pair c;
int [] alphas={30,45,60,90}; 
for(int a: alphas){
t1= rotate(a,origin()) ;
point Ad = t1*A;
point Bd = t1*B;
point Cd = t1*C;
//dot("$A_{"+string(a)+"}$", Ad, SW);
//dot("$B_{"+string(a)+"}$", Bd, SW);
//dot("$C_{"+string(a)+"}$", Cd, SW);
draw(Ad--Bd--Cd--cycle);
}
draw(((-.15,0))--((.15,0)));  draw(((0,-.15))--((0,.15)));

