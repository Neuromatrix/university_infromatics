arr = split(readline()," ");
ans =[  ]
for el in arr
    isa = typeof(findfirst("A",el))==Nothing
    isb = typeof(findfirst("B",el))==Nothing
    ise = typeof(findfirst("E",el))==Nothing
    if isa & isb & ise
        push!(ans,el)
    end
end
for el in ans
    println(el)
end
