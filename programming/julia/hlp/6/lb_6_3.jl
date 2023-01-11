module lb_6_3

include("incl.jl")
using .incl

function main()
    n,array = input()
    println(primes_in_array(array,n))
end

using Test
@testset "mod_test" begin
    @test primes_in_array([3 2 4 8],4) == 2
end

end
