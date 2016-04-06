#include <stdio.h>

double raizq(double);

int main (void)
{
	double n;
	scanf("%lf", &n);
	printf("%.2lf\n", n);
	printf("A raiz aproximada e: %.2lf\n", raizq(n));
}
	double raizq(double n)
	{
		double A, B, C, valor;
   		A=1;
		while((B=A*A)<=n){   
			C=A;
			A++;
		}
		if((C*C)==n) {    
			return C;
		} else {
			valor=((n/(((n/C)+C)/2))+(((n/C)+C)/2))/2;   
			return n/valor;
		}
		return 0.0;
	}

