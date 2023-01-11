n = 30
# n = parse(Int32,readline())
a = []
for i in 1:n
    append!(a,parse(Int32,readline()))
end
b = copy(a)

for i in 1:n
    b[i]+=a[n-i+1]
end
println(b)
println(maximum(b))
