function input()
    n = parse(Int32, readline())
    m = parse(Int32, readline())
    matrix = zeros(Int32,n,m)
    for i in 1:n
        str = split(readline()," ")
        for j in 1:m
            matrix[i,j] = parse(Int32, str[j])
        end
    end
    return n,m,matrix
end

function sortmatrix(n,m,matrix)
    summ = Array{Int32}(undef, n)
    a = (sortperm(view.(Ref(matrix), 1:size(matrix,1), :), rev=true))
    ansmatrix = zeros(Int32,n,m)
    for i in 1:n
        for j in 1:m
            ansmatrix[i,j] = matrix[a[i],j]
        end
    end

    return ansmatrix
end
n,m,matrix = input()
println(sortmatrix(n,m,matrix))


