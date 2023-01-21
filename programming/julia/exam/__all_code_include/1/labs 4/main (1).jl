module MyModul

include("modul.jl")
using .MyFunction
using Test

create_F()
text = readfile("F.txt")
arr = otbor(text)
writefile("G.txt", arr)

println("Содержимое F.txt: ")
output("F.txt")
println("Содержимое G.txt: ")
output("G.txt")

@testset "MyTest" begin
    @test otbor(["1", "2", "3", "4", "5", "6", "7", "8", "9"]) == ["2", "4", "6", "8"]
end
end