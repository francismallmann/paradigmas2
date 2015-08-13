int filtrologin(){
        char* input[] = {"nome1", "nome2", "nome3"};
        char* output[] = {NULL, NULL, NULL};
        int isize = 3;
        int osize = 0;
        char* suf = "@mycompany.com";
        for (int i = 0; i < isize; i++) {
          if (strlen(input[i]) <= 8) {
￼￼          size_t len = strlen(input[i]) + strlen(suf) + 1;
            output[osize] = malloc(len * sizeof(char));
            output[osize][0] = '\0';
            strcat(output[osize], input[i]);
            strcat(output[osize], suf);
            osize++; 
        }
}
sort(output, osize);
}