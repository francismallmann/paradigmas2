#include<stdio.h>
#include<stdlib.h>
#include<string.h>





int main(void)
{
    FILE *fp;
    FILE *fp2;
    char str[80];



    fp = fopen("nomes.txt", "r");
    fp2 = fopen("sorteio.html", "w+");

    //int stringLen = sizeof(str) / sizeof(char *);
    //qsort(str, stringLen, sizeof(char *), comparar);

    fputs("<h1>Lista de Ganhadores</h1>\n",fp2);
    fputs("<ul>\n",fp2);


    while(fgets(str, 81, fp) != NULL){
       // printf("%s", str);
       // printf("%c", str[0]);
        if(str[0]=='R'){
            //printf("Detectei!\n");
            fputs("<li>",fp2);
            fputs(str,fp2);
            fputs("</li>\n",fp2);
    //        fputs("\n\n",fp2);
        }
    }
    fputs("</ul>",fp2);
    fclose(fp2);
    fclose(fp);
    return 0;
}
