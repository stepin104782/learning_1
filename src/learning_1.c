#include"learning_1_header.h"

int addition(int a, int b)
{
    int sum;
    sum = a + b;
   printf("sum = %d",sum);

}
int main()
{
    int x,y,sum=0;
    printf("enter the two numbers to be added: \n");
    scanf("%d\n%d",&x,&y);
    addition(x,y);

    return 0;
}
