#include <iostream>
#include <cstring>
#include <bits\stdc++.h>
#include "rk_structs.h"
const int MAX = 100;
struct st{
char Surname [MAX];
char Group[MAX];
float mark;
};
// strict - struct.atrib
// struct* - struct->atrib
st input(){
    st tmt;
    scanf("%s%s%f",tmt.Surname, tmt.Group,&tmt.mark);
    return tmt;
}

void output(st stud){
    printf("%s\t%s\t%f\n", stud.Surname, stud.Group, stud.mark);

}
bool cmp(st stud, float medium){
    if(stud.mark < medium)
        return true;
    return false;
}
bool cmpstring(char a[], char b[]){
    if(strlen(a)>strlen(b)){
        return false;
    }
    if(strlen(a)<strlen(b)){
        return true;
    }
    for(int i = 0; i < strlen(a); i++){
        if (a[i]>b[i]) return false;
    }
    return true;
}
char dict[MAX][MAX];
void sort__(int size){
    for(int i = 0; i < size; i++){
        for (int j = 0; j < size; j++){
            if(cmpstring(dict[i],dict[j])){
                char tmp[MAX];
                strcpy(tmp,dict[i]);
                strcpy(dict[i],dict[j]);
                strcpy(dict[j],tmp);
            }
        }
    }
}
void min(int size){
    char t[MAX] = "zzzzzzzzzzzzzzzzzzzz";
    for(int i =0; i < size;i ++){
        if(cmpstring(dict[i],t))strcpy(t,dict[i]);
    }
    printf("%s",t);
}
int main(){
    st sts[20];
    int m;
    printf("Enter amont of students: ");
    scanf("%d", &m);
    printf("infov of students:\n");
    for(int i = 0;i < m;i++){
        sts[i] = input();

    }
    for(int i = 0;i < m;i++){
        output(sts[i]);
    }

    float medium;
    printf("Enter mark: ");
    scanf("%f", &medium);
    for(int i = 0;i < m;i++){
        if(cmp(sts[i], medium)){
            printf("%s\n", sts[i].Surname);
        }
    }
    //3
    //scanf string
    // for(int i = 0; i < 5; i++){
    //     scanf("%s",dict[i]);
    // }
    // min(5);
    // 3
}
