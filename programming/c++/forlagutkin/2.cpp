#include <iostream>
#include <iomanip>
#include <ostream>
#include <fstream>
#include <set>
#include <unordered_set>
#include <map>
#include <unordered_map>
#include <bitset>
#include <vector>
#include <string>
#include <stack>
#include <queue>
#include <deque>
#include <array>
#include <algorithm>
#include <functional>
#include <cmath>
#include <time.h>
#include <random>
#include <chrono>
#include <cassert>
#include <cstring>
#include <climits>
#include <ext/rope>
#include <ext/pb_ds/detail/standard_policies.hpp>
#include <ext/pb_ds/tree_policy.hpp>
#include <ext/pb_ds/assoc_container.hpp>
using namespace std;
using namespace __gnu_pbds;
using namespace __gnu_cxx;
using ll = long long;
using ull = unsigned long long;
using ld = long double;
template <typename T> using ordered_set = tree<T,null_type,less<T>,rb_tree_tag,tree_order_statistics_node_update>;
constexpr int INF = INT_MAX-1;
constexpr ll LINF = LLONG_MAX-1;
constexpr ll MOD = 1000000007;
constexpr char nl = '\n';
constexpr long double eps = 1e-9;
#pragma GCC target("sse,sse2,sse3,ssse3,sse4,popcnt,abm,mmx,avx,avx2")
#pragma GCC optimization ("O3")
#pragma GCC optimization ("unroll-loops")
template <typename T> inline T abs(T &x) {return(x<0 ? -x : x);}
template <typename T> ostream& operator<<(ostream &out, const vector<T> &v) {for (auto &it : v) {out << it << " ";}return out;}
template <typename T1, typename T2> ostream& operator<<(ostream &out, const pair<T1, T2> &v) {out << v.first << " " << v.second;return out;}
template <typename T> inline T pw(T x) {return x*x;}
template <typename T> inline T pw2(T x){return 1LL<<x;}
inline void prepare(){
    freopen("C:\\Users\\grivi\\vscodes\\.vscode\\input.txt", "r", stdin);
    freopen("C:\\Users\\grivi\\vscodes\\.vscode\\output.txt", "w", stdout);
}

inline void solve1(){
    long double r1,r2;
    std::cin >> r1>> r2;
    r1 = max(r1,r2);
    std::cout<< 2*acos(-1)*r1 << std::endl;
}
inline void solve2(){
    char c;
    std::cin >> c;
    if (c>= 'А' && c<='Н'){
        std::cout << "*" << c <<std::endl;
    } else{
        std::cout << c <<std::endl;
    }
}
inline void solve3(){
    char a,b ,c;
    std::cin >> a >> b >> c;
    int sum = (a<=90) + (b<=90) + (c<=90);
    std:: cout << sum << std::endl;
}
double y(float x){
    if (x <= 1){
        return pow(x,5)+atan(8*x);
    } else if (1 < x && x<=2){
        return 5*x - (1+pow(3,x));
    } else {
        return 1.0/tan(2*x+1);
    }
}
double f(float x){
    if (x <= 1){
        return exp(tan(x)+1);
    } else if (1 < x && x<=2){
        return pow(x,4)-tan(4*x);
    } else {
        return pow(x,0.2);
    }
}
inline void solve4(){
    float x;
    std::cin >> x;
    std::cout << y(x) << " " << f(x)<< std:: endl;
}
signed main(){
    ios_base::sync_with_stdio(false);
    cin.tie(0);
    cout.tie(0);
    prepare();
    size_t tt = 1;
    // cin >> tt;
    while(tt--) solve4();
    return 0;
}
