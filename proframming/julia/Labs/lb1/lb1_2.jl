function recursive__evklid(a,b) #O(log(n))
    if b==0
        return a;
    else
        return evklid(b,a%b);
    end
end
function while__evklid(a,b) #O(min(a,b))
    while a!=b
        if (a>b)
            a = a - b;
        else
            b = b - a;
        end
    end
    return max(a,b);
end
function for__evklid(a,b) # O(min(a,b))
    ans = 1
    for j in 1:min(a,b)
        if (a%j==0) & (b%j==0)
            a=a/j
            b=b/j
            ans = ans*j
        end
    end
    return ans
end
a = parse(Int64,readline())
b = parse(Int64,readline())
println(for__evklid(a,b));
