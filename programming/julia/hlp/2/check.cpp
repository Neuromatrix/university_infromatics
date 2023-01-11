#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <deque>
bool check(std::ifstream &a, std::ifstream &b){
    int x;
    std::vector<int> d1;
    std::deque <int> d2;
    while(a >> x){
        d1.push_back(x);
    }
    while (b >> x){
        d2.push_back(x);
    }
    for (const auto & element : d1) {
        if (element%2==0) continue;
        else{
            if (element==d2.front()){
                d2.pop_front();
            } else {
                return false;
            }
        }
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
