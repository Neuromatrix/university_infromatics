#include "finder.hpp"
#include <fstream>

int main(){
    std::ifstream in("tasks.txt");
    std::map<std::string,std::string> data;
    std::string num, task,patt = "";
    while (in >> num){
        getline(in,task);
        data[num] = task;
        std::cout << num << " " << task << std::endl;
    }
    while (patt != "exit"){
        getline(std::cin,patt);
        std::vector <std::string> a = find_in_tasks(data,patt);
        for (const auto &it :a ){
            std::cout << it << std:: endl;
        }
    }


    system("pause");

    return 0;
}
