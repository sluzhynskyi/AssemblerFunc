
#include <stdio.h>
#include <inttypes.h>

double sum(double, double, int);

int main() {
    double a1, d;
    int n;
    scanf("%lf",&a1);
    scanf("%lf",&d);
    scanf("%i",&n);
    printf("The sum is %g\n", sum(a1, d, n));
    return 0;
}
