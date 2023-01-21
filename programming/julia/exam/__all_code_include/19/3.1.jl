module MyModul

include("module.jl")
using .Work
using Test

print("Введите количество строк и столбцов матрицы: ")
n, m = input_size()

println("Введите матрицу: ")
arr = input_matrix(n)

for i in work(n, m, arr)
    println(i)
end

@testset "MyTest" begin
    @test work(2, 3, [[22, 33, 44], [1, 2, 3]]) == ["На строке 2 сумма элементов равна 6"]
    @test work(3, 3, [[22, 33, 44], [1, 2, 3], [4, 5, 6]]) == ["На строке 2 сумма элементов равна 6", "На строке 3 сумма элементов равна 15"]
end
end