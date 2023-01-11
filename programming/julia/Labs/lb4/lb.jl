using DelimitedFiles
input = open("input.txt")
#println("INPUTFILE")
lines = readlines(input)
arr = []
for ln in lines

    append!(arr,parse(Int32,ln))
    #println(last(arr))
end
close(input)
s = size(arr)[1]
#println("OUTPUTFILE")
open("output.txt","w") do f
    for l in 0:(s-1)
        writedlm(f, arr[s-l])
        #println(arr[s-l])
    end
end
