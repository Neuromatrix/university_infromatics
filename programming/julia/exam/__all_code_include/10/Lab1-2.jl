K = parse(Int64,readline())
Fi = [1,1,2]
while K > Fi[end-1] - Fi[end-2]
    push!(Fi,Fi[end-1]+Fi[end])
end
println("правое число: ", Fi[end]," номер в последовательности: " , length(Fi))
println("левое число: ",Fi[end-1]," номер в последовательности: ", length(Fi)-1)
println("Разность между ними: ", Fi[end-1])
println(Fi)