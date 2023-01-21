module MyModule

include("module.jl")
using .rabota
using Test

print("Вводите координаты выпуклого четырёхугольника: ")
arr = input()
print("Введите количество точек на плоскости: ")
m = parse(Int8, readline())
c = 0
for i in 1:m
    print("Координаты точки: ")
    x, y = [parse(Int8, x) for x in split(readline())]
    if result(arr, x, y)
        global c 
        c += 1
    end
end

println(c, " точек входят в наш выпуклый четытрёхугольник")

@testset "MyTest" begin
    @test result([[0, 0], [0, 1], [2, 1], [2, -1]], 0, 1) == true
    @test result([[0, 0], [0, 1], [2, 1], [2, -1]], 0, -1) == false
end
end