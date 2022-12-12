touch("input.txt")
input = open("input.txt")
lines = readlines(input)
s = size(lines)[1]
arr = zeros(Int32,0)
for i in 1:s
    str = split(lines[i]," ")
    l = size(str)[1]
    for j in 1:l
        append!(arr,parse(Int32,str[j]))
    end
end
s = size(arr)[1]
touch("input.txt")
open("output.txt","w") do f
    for l in 1:(s)
        if arr[l]%2==1
            write(f, string(arr[l]))
            write(f,' ')
        end
    end
end
