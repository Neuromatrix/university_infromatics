#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
bool check(std::ifstream &a, std::ifstream &b){
    int x;
    std::vector<int> d1,d2;
    while(a >> x){
        d1.push_back(x);
    }
    while (b >> x){
        d2.push_back(x);
    }
    if(d1.size()!=d2.size()){
        return false;
    }
    std::reverse(d2.begin(), d2.end());
    for (size_t i = 0; i < d1.size(); i++){
        if(d1[i]!=d2[i]) return false;
    }
    return true;
}
int main(int arvc, char* argv[]){
    std::ifstream f;
    std::ifstream g;
    f.open("input.txt");
    f.open("output.txt");
    std::cout << check(f,g) << std::endl;
}
