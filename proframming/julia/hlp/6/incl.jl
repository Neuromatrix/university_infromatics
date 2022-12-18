module incl
export input,primes_in_array
    function input()
        n = parse(Int32, readline())
        arr = []
        str = split(readline()," ")
        for i in 1:n
            append!(arr,parse(Int64,str[i]))
        end
        return n,arr
    end
    function isprime(k)
        if k<2
            return false
        end
        if k==2
            return true
        end
        for i in 2:(sqrt(k)+1)
            if k%i==0
                return false
            end
        end
        return true
    end
    function primes_in_array(array,n)
        cnt = 0
        for i in 1:n
            cnt+=isprime(array[i])
        end
        return cnt
    end
end
