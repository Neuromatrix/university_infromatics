module MyModul

using Test
include("modul.jl")
using .replacing_elements_in_the_matrix

print("Введите порядок матрицы: ")
n = parse(Int8, readline())

arr = create_matrix(n)
output_matrix(arr)

print("Введите иденксы каких элементов поменять в строке: ")
k, l = [parse(Int8, x) for x in split(readline())]

arr = replacing_elements(arr, k, l, n)
output_matrix(arr) 

@testset "Modul Test" begin
    @test replacing_elements([[1, 2], [3, 4]], 1, 2, 2) == [[2, 1], [4, 3]]
    @test replacing_elements([[1, 2, 3], [4, 5, 6], [7, 8, 9]], 1, 3, 3) == [[3, 2, 1], [6, 5, 4], [9, 8, 7]]
end
end