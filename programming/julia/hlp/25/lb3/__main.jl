module __main

include("lb.jl")
using .lb

function main()
    arr,n = input()
    println(triangle_type(arr,n))
end

using Test
@testset "mod_test" begin
    @test triangle_type([3,4,5,1,2,2,1,1,2],3) == ["obtlong","acute","obtuse"]
end

end
