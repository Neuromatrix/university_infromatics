input = open("input.txt")
lines = readlines(input)
close(input)
s = size(lines)[1]
res = []
for l in 1:s
    str = split(lines[l]," ")
    for k in str
        push!(res,k)
    end
end
open("output.txt","w") do f
    for l in res
        if count(i->(i == l), res)==1
            write(f,l)
            write(f,'\n')
        end
    end
end
