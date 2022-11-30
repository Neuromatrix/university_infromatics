module __main

include("lb.jl")
using .lb

function main()
    n,m,matrix = input()
    println(sortmatrix(n,m,matrix))
end

using Test
@testset "mod_test" begin
    @test sortmatrix(2, 2, [1 2; 3 4]) == Int32[3 4; 1 2]
end

end
