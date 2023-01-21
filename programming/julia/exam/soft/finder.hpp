#include <vector>
#include <string>
#include <map>
#include <set>
#include <list>
#include <iostream>
std::list<std::wstring> split(std::wstring s){
    std::wstring delimiter = L" ";
    size_t pos = 0;
    std::wstring token;
    std::list <std::wstring> splitten_string;
    while ((pos = s.find(delimiter)) != std::wstring::npos) {
        token = s.substr(0, pos);
        splitten_string.push_back(token);
        s.erase(0, pos + delimiter.length());
    }
    splitten_string.push_back(s);
    return splitten_string;
}
std::vector<std::wstring> find_in_tasks(const std::map<std::wstring,std::wstring> &data, const std::wstring& pattern){
    std::list<std::wstring> np = split(pattern);
    np.push_front(L"&");
    std::map<std::wstring,std::wstring> res = data;
    std::vector<std::wstring> task_numbers = {};
    while (np.size()){
        std::wstring operand = np.front();
        np.pop_front();
        std::wstring token = np.front();
        np.pop_front();
        if (operand == L"&" || operand == L"&&"){
            for(const auto & it : data){
                if(it.second.find(token)==std::wstring::npos){
                    res.erase(it.first);
                }
            }
        } else if (operand == L"|" || operand == L"||"){
            for(const auto & it : data){
                if(it.second.find(token)!=std::wstring::npos){
                    res.insert({it.first,it.second});
                }
            }
        } else {
            std::cout << "Wrong operand between strings" << std::endl;
            exit(0);
        }
    }
    for (const auto & it: res){
        task_numbers.push_back(it.first);
    }
    return task_numbers;

}
