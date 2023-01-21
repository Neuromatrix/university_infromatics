n = rand(2:10)
arr = [rand(10:99, n) for i in 1:n]
for i in arr
    println(i)
end
result = []

for i in range(n, 1, step=-1)
    global result
    l = []
    for j in range(n, 1, step=-1)
        push!(l, arr[i][j])
    end
    push!(result, l)
end
for i in result
    println(i)
end