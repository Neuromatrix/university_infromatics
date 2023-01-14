input = open("input.txt")
lines = readlines(input)
close(input)
s = size(lines)[1]
open("output.txt","w") do f
    for l in 1:(s)
        write(f,lines[l])
    end
end
