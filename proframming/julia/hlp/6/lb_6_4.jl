
input = open("input.txt")
lines = readlines(input)
close(input)
s = size(lines)[1]
open("output.txt","w") do f
    for l in 1:(s)
        if l%2==0
            write(f, lines[l])
            write(f,'\n')
        end
    end
end
