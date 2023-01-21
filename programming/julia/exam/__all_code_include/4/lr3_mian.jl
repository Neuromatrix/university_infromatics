module Main
  include("lr3_functions.jl")
  using .Functions
  using Test

  println("Введите размерность матрицы n на m: ")
  row, column = parse(Int64, readline()), parse(Int64, readline())
  mat = [rand(1:9, column) for i in range(1, row)]

  MatOutput(mat)
  mat = ReverseRowSort(mat)
  MatOutput(mat)
  @testset "Test" begin
    @test ReverseRowSort([[1,2,3], [4, 5, 6], [7,8,9]]) == [[3,2,1],[6,5,4],[9,8,7]]
    @test ReverseRowSort([[184,222,31], [454, 787, 424], [798,56,345]]) == [[222,184,31],[787,454,424],[798,345,56]]
  end
end
