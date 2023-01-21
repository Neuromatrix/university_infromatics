module MyModle

include("module.jl")
using .Help
using Test

output()
print("Введите имя: ")
name = readline()
arr = remove_name(name)
input(arr)
output()

@testset "Mytest" begin
    @test remove_name("А.С.Пушкин") == ["\"Война и мир\" Л.Н.Толстой 1889"]
end
end