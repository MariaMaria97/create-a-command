#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/stat.h>
 
 
int main(int argc, char **argv){
    struct stat s;
    lstat(argv[1], &s);
    if(S_ISREG(s.st_mode))
        printf("Le fichier est régulier \n");
    else if(S_ISDIR(s.st_mode))
        printf("Le fichier est un répertoire \n");
    else if(S_ISLNK(s.st_mode))
        printf("Le fichier est un lien symbolique \n");
 
    return 0;
}
