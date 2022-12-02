n = parse(Int64,readline())
matrix = fill(0,(n,n))
for i in 1:n
    str = split(readline()," ")
    for j in 1:n
        matrix[j,n-i+1] = parse(Int32, str[j])
    end
end

println(matrix)
