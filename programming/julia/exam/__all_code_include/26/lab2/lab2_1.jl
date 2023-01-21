H = Array{Int32}(undef, 10)
println("Input your elements of the integer array in the column")
for i in 1:10
    x = parse(Int64, readline())
    H[i] = x
end

maximum_ = -1e9
for i in 1:10
    if H[i] > maximum_
        global maximum_ = H[i]
    end
end
println("Starting array: ", H)

deleteat!(H, findall(x->x==maximum_, H))

print("Final array: ", H, " Max integer: ", maximum_, "\n")
