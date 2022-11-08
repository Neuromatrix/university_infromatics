using DelimitedFiles
input = open("C:\\Users\\grivi\\vscodes\\.vscode\\input.txt")
lines = readlines(input)
arr = []
for ln in lines
    append!(arr,parse(Int32,ln))
end
close(input)
s = size(arr)[1]
println(s)
open("C:\\Users\\grivi\\vscodes\\.vscode\\output.txt","w") do f
    for l in 0:(s-1)
        writedlm(f, arr[s-l])
    end
end
