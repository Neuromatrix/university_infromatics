#include <iostream>
#include <cstring>
using namespace std;
bool is(char* l, char k[]){
    if(strlen(l)!=strlen(k)) return false;
    for (int i = 0; i < strlen(k);i++){
        if(l[i]!=k[i]) return false;
    }
    return true;
}
inline void solve(){
    setlocale(LC_ALL, "rus");
    const int t = 255;
    char s[t],s1[t];
    char w1[t],w11[t];
    char w2[t];
    cin.getline(s, t);
    cin.getline(w1, t);
    cin.getline(w2, t);
    for (int i = 0; i < t; i++){
        s1[i] = s[i];
        w11[i] = w1[i];
    }
    w11[0] = toupper(w1[0]);
    int n = 0;
    char* ls = strtok(s1, " ,.-;:");

    char* text[t];
    while (ls != NULL)
    {
        if(is(ls,w1) || is(ls,w11)){
            text[n] = w2;
            if(ls[0]>='A' && ls[0]<='Z'){
                text[n][0] = toupper(w2[0]);
            }
        }
        else text[n] = ls;
        n++;
        ls = strtok(NULL, " ,.-:");
    }
    int k = 0;
    for(int i = 0; i < strlen(s) && s[i]!='\0'; i++){
        if((s[i]>='a' && s[i]<='z') ||( s[i]>='A' && s[i] <='Z')){
            while ((s[i]>='a' && s[i]<='z') ||( s[i]>='A' && s[i] <='Z'))
            {
                i++;
            }
            cout << text[k];
            k++;
            if(s[i]!='\0') cout << s[i];
        } else {
            cout << s[i];
        }
    }
    return;

}
signed main(){
    solve();
    return 0;
}
