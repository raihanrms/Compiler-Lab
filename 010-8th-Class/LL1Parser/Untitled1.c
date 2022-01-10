#include<stdio.h>
#include<string.h>
#include<stdlib.h>
char prod[3][15]={"S->aBa","B->bB","B->e"};
char table[2][3][3]={{"aBa",","},{"e","bB",""}};
int size [2][3]={3,0,0,1,2,0},n,sz;
char s[20],stack[20];

void display(int i,int j)
{

    int k;
    for(k=0;k<=i;k++)
    printf("%c",stack[k]);
    printf("");
    for(k=j;k<=n;k++)
    printf("%c",s[k]);

    printf("\n");

}

void main()
{

    int i,j,k,row,col,flag=0;
    printf("\nthe Grammer is\n");
    for(i=0;i<3;i++)
        printf("%s\n",prod[i]);
    printf("\nPredictive parsing table is:\n");
    printf("\ta\tb\t$\n");
    printf("---------------------\n");
    for(i=0;i<2;i++)
    {
    if(i==0)
        printf("S");
    else
        printf("B");
        for(j=0;j<3;j++)
        {
            printf("\t%s",table[i][j]);
        }
        printf("\n");
    }

    printf("\n Enter the string:");
    scanf("%s",s);
    strcat(s,"$");
    n=strlen(s);
    stack[0]='$';
    stack[1]='S';
    i=1;i=0;
    printf("\nStack input");
    printf("\n----------------------------\n");

    while(1)
    {
        if(stack[i]==s[j])
        {
            i--;
            j++;
            if(stack[i]== '$'&& s[j]=='$')
            {
                printf("$$\nSECCESS\n");
                break;
            }
            else
                if(stack[i]=='$' && s[i]!='$')
                {
                    printf("error!!\n");
                    break;
                }
                display(i,j);

        }

        switch(stack[i])
        {
            case 'S': row=0; break;
            case 'B': row=1; break;
        }

        switch(s[j])
        {
            case 'a': col=0;break;
            case 'b': col=1;break;
            case '$': col=2;break;
        }
        if(table[row][col][0]=='\0')
        {
            printf("\nError...\n");
            break;
        }
        else if(table[row][col][0]=='e')
        {
            i--;
            display(i,j);
        }
        else
        {
            sz=size[row][col];
            for(k=sz;k>=0;k--)
            {
                stack[i]=table[row][col][k];
                i++;
            }
            i--;
            display(i,j);
        }
    }

}
