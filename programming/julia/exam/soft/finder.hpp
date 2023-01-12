#include <vector>
#include <string>
#include <map>
#include <set>
#include <list>
#include <iostream>
std::list<std::string> split(std::string s){
    std::string delimiter = " ";
    size_t pos = 0;
    std::string token;
    std::list <std::string> splitten_string;
    while ((pos = s.find(delimiter)) != std::string::npos) {
        token = s.substr(0, pos);
        splitten_string.push_back(token);
        s.erase(0, pos + delimiter.length());
    }
    splitten_string.push_back(s);
    return splitten_string;
}
std::vector<std::string> find_in_tasks(const std::map<std::string,std::string> &data, const std::string& pattern){
    std::list<std::string> np = split(pattern);
    np.push_front("&");
    std::map<std::string,std::string> res = data;
    std::vector<std::string> task_numbers = {};
    while (np.size()){
        std::string operand = np.front();
        np.pop_front();
        std::string token = np.front();
        np.pop_front();
        if (operand == "&" || operand == "&&"){
            for(const auto & it : data){
                if(it.second.find(token)==std::string::npos){
                    res.erase(it.first);
                }
            }
        } else if (operand == "|" || operand == "||"){
            for(const auto & it : data){
                if(it.second.find(token)!=std::string::npos){
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
