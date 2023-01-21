function main()
    n = parse(Int32,readline())
    m = parse(Int32,readline())
    matrix = zeros(Int32,n,m)
    L = []
    strs = split(readline()," ")
    for j in strs
        append!(L,parse(Int32, j))
    end
    for i in 1:n
        str = split(readline()," ")
        for j in 1:m
            matrix[i,j] = parse(Int32, str[j])
        end
    end

    for i in 1:n
        if !(i in L)
            for j in 1:m
                print(matrix[i,j],' ')
            end
        end
        println()
    end
end
main()
