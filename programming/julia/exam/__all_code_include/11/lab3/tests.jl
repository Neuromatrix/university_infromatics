include("calculator.jl")
using Test

@test Calculator.get_min([[1, -2, 3], [3, 2, 5], [1, 2, 8]]) + Calculator.get_min([[1, 0, 3], [1, 4, 7], [2, 5, 8]]) == -2
@test Calculator.get_min([[1, -2, 3], [3, 2, 5], [1, 2, 8]]) + Calculator.get_min([[1, 5, 3], [1, 4, 7], [2, 5, 8]]) == -1
@test Calculator.get_min([[5, 4, 3], [3, 2, 5], [6, 2, 8]]) + Calculator.get_min([[5, 2, 3], [3, 4, 7], [1, 5, 8]]) == 3