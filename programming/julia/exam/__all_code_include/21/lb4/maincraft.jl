module abc
include("module_maincraft.jl")
using .Qwerty

text = readfile("F.txt")
text = reversefile(text)
writefile("G.txt", text)
output("F.txt")    
output("G.txt")   
end