
n = 50
arr = []
for i in 1:n
    append!(arr,parse(Int32,readline()))
end
res = []
for i in 1:n
    cnt = count(k->(k==arr[i]),arr)
    if cnt < 3
        append!(res,arr[i])
    end
end
println(res)
