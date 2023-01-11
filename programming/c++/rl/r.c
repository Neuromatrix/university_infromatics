#include <stdio.h>
#include <math.h>
int main(int argc, char *argv[]){
    float a, b, c;
    scanf("%f%f%f", &a,&b,&c);
    if (a == 0){
        float ans = -c/b;
        printf("%.2f",ans);
    } else if (b == 0){
        if (-c/a<0){
            puts("error");
        } else {
            float ans = sqrt(-c/a);
            printf("%.2f",ans);
        }
    } else if (c == 0){
        float ans = -b/a;
        printf("%.2f 0",&ans);

    } else {
        float D = b*b-4*a*c;
        if (D < 0){
            puts("no solutions");
        } else if (D < 0.01){
            float ans = (-b)/(2*a);
            printf("%.2f",ans);
        }
        else {

            float ans1 = (-b+sqrt(D))/(2*a), ans2 = (-b-sqrt(D))/(2*a);
            printf("%.2f \n",ans1);
            printf("%.2f \n",ans2);
        }
    }
}
