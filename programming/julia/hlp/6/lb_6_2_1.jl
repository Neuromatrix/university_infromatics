n = parse(Int32,readline())
mult = []
in = []
x = split(readline()," ")
for i in 1:n
    append!(in,parse(Int32,x[i]))
end
for i in 1:n
    append!(mult,in[i]*in[n-i+1])
end
println(minimum(mult))
