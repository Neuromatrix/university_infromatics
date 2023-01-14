module lb

export  input, triangle_type
function input()
    n = parse(Int32, readline())
    arr = []
    str = split(readline()," ")
    for i in 1:3*n
        l = parse(Int32, readline())
        push!(arr,l);
    end
    return n,arr
end

function triangle_type(data,n)
    ans = []
    for i in 1:n
        x = i+2*(i-1)
        l1 = data[x]
        l2 = data[x+1]
        l3 = data[x+2]
        tmp = [l1,l2,l3]
        sort!(tmp)
        if tmp[3]^2>(tmp[2]^2+tmp[1]^2)
            push!(ans,"obtuse")
        elseif tmp[3]^2==(tmp[2]^2+tmp[1]^2)
            push!(ans,"obtlong")
        else
            push!(ans,"acute")
        end
    end
    return ans
end
end



