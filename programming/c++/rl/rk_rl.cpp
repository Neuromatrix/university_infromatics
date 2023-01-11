#include <iostream>
#include <ctime>
#include <cmath>
const int maxArr = 20;
int matrix[maxArr][maxArr];
void input_rand(int row, int col){

    srand(time(0));
    for (int i= 0; i < row; i ++){
        for (int j = 0; j < col; j++){
            matrix[i][j] = rand()%100-50;
        }
    }
}
void input_man(int row, int col){
    for (int i= 0; i < row; i ++){
        for (int j = 0; j < col; j++){
            scanf("%d",&matrix[i][j]);
        }
    }
}
void vvod(int matrix[maxArr][maxArr], int *n, int *m){
    int rl;
    printf("auto - 0, man - 1\n");
    scanf("%d",&rl);
    do{

        printf("size matrix\n");
        scanf("%d%d",n,m);

    } while(*n>=maxArr || *n<=0 || *m>=maxArr || *m<=0);
    if (rl){
        input_man(*n,*m);
    } else {

        input_rand(*n,*m);
    }
}

void printmatrix(int row, int col){
    for (int i= 0; i < row; i ++){
        for (int j = 0; j < col; j++){
            printf("%5d",matrix[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}
void change(int j,int row, int col){
    for (int i = 0; i < row; i++){
        matrix[i][j] = 1;
    }
}
void solve1(int row, int col){
    int cnt = 0;
    for(int j  = 0; j < col; j ++){
        for (int i = 0; i < row; i++){
            if(matrix[i][j]==0){
                change(j,row,col);
                cnt++;
                break;
            }
        }
    }
    printf("изменено столбцов: %d\n",cnt);
}
void solve2(int row, int col){
    int max_nulls = 0, curret_nulls = 0, index = 0;
    for (int i = 0; i < row; i ++){
        curret_nulls = 0;
        for(int j = 0; j < col; j++){
            curret_nulls += (matrix[i][j]==0);
        }
        if (curret_nulls>max_nulls){
            index = i;
            max_nulls = curret_nulls;
        }
    }
    printf("max zeroes: %d  row's index %d\n",max_nulls, index+1);
}
void swap(int *a,int *b){
    int buf = *a;
    *a = *b;
    *b = buf;
}
int m[] = {1,2,3,4,5,6};
int ans[maxArr];
int array_divisionby3(int n){
    int k = 0;
    for (int i = 0; i < n ; i++){
        if(m[i]%3==0){
            ans[k] = m[i];
            k++;
        }
    }
    return k;
}
void bubble_sort(int size){
    for (int i = 0; i < size - 1; i++){
        for (int j = 0; i + j < size - 1; j++){
            if (m[j]> m[j+1]){
                swap(&m[j],&m[j+1]);
            }
        }
    }
}
void swap_collumns(int k, int l, int row){
    for (int i = 0; i < row ; i ++){
        swap(&matrix[i][k],&matrix[i][l]);
    }
}
int find_max_in_matrix(int row, int col){
    int index = 0;
    int maxx = -10000;
    for (int i = 0; i < row; i ++){
        for (int j = 0; j < col; j ++){
            if(matrix[i][j]>maxx){
                maxx = matrix[i][j];
                index = j;
            }
        }
    }
    return index;
}
int find_min_in_matrix(int row, int col){
    int index = 0;
    int minn = 10000;
    for (int i = 0; i < row; i ++){
        for (int j = 0; j < col; j ++){
            if(matrix[i][j]<minn){
                minn = matrix[i][j];
                index = j;
            }
        }
    }
    return index;
}
void printmas(int n){
    for (int i = 0; i< n; i ++){
        printf("%d ", ans[i]);
    }
    printf("\n");
}
int main(){
    // int n,m;
    // vvod(matrix,&n,&m);
    // swap_collumns(find_max_in_matrix(n,m),find_min_in_matrix(n,m),n);
    // printmatrix(n,m);
    printmas(array_divisionby3(6));
}
