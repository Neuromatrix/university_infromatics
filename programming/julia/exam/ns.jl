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
    ins= open("sent.txt")
    lns = readlines(ins)
    for l in lns
        str = split(l," ")
        str = str[2:length(str)]

        for k in str
            write(f,"$k: ")
            x = string(count(i->(i==k),res))
            write(f,x)
            write(f,'\n')
        end

    end
end

