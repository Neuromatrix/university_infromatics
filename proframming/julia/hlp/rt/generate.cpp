#include <iostream>
#include <fstream>
void generate(std::ofstream &a){
    for (int i = 0; i < 100; i++){
        for (int j = 0; j < rand()%15+5; j++)
            a << rand()%1000 << " ";
        a << rand()%1000 << std::endl;
    }
}
int main(int arvc, char* argv[]){
    std::ofstream f;
    f.open("input.txt");
    generate(f);
}
