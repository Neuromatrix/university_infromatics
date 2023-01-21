module MyModule

include("module.jl")
using .MyFunction
using Test

arr = input_treangle()
print("Введите количество точек на плоскости: ")
m = parse(Int16, readline())

point = input_point(m)

answer = result(arr, point)
if answer != 0  
    println("Вот столько точек на плоскости входит в треугольник: ", answer)
else
    println("Ни одной точки на плоскости не входит в треугольник:((")
end
@testset "MyTest" begin
    @test result([[1, 2], [3, 5], [6, 3]], [[3, 3], [3, 4], [3, 10]]) == 2
    @test result([[1, 2], [3, 5], [6, 3]], [[5, 7], [0, 0], [3, 10]]) == 0
end
end