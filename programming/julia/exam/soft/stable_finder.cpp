#include "finder.hpp"
#include <fstream>
#include <codecvt>
int main(){
    std::wstring str;
    std::wifstream in("tasks.txt", std::ios::binary);
    std::wofstream outt("outt.txt");
    in.imbue(std::locale(in.getloc(),
        new std::codecvt_utf16<wchar_t, 0x10ffff, std::little_endian>));
    std::map<std::wstring,std::wstring> data;
    std::wstring num, task,patt = L"empty";
    while (in >> num){
        std::getline(in,task);
        data[num] = task;
        outt << task;
    }
    while (patt != L"exit"){
        std::getline(std::wcin,patt);
        std::vector <std::wstring> a = find_in_tasks(data,patt);
        for (const auto &it :a ){
            std::wcout << it << std:: endl;
        }
    }


    system("pause");

    return 0;
}
