module incl
export input,primes
    function input()
        n = parse(Int32, readline())
        return n
    end
    function eratostene(n)
        res = zeros(Int8,3*n)
        for i in 2:n
            if res[i]==1
                continue
            end
            j = i*2
            while j<=n
                res[j] = 1
                j+=i
            end
        end
        return res
    end
    function primes(n)
        sieve = eratostene(n)
        ans = 0
        for i in 2:n-1
            if (sieve[i] == 0)  & (sieve[n-i] == 0) & (i<=n-i)
                return i,n-i
            end
        end
        return -1,-1
    end
end
