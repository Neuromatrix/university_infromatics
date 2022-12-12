module lb_2_3

include("incl.jl")
using .incl

function main()
    n = input()
    println(primes(n))
end

using Test
@testset "mod_test" begin
    @test primes(4) == (2,2)
    @test primes(6) == (3,3)
    @test primes(20) == (3,17)
    @test primes(22) == (3,19)
end

end
lb_2_3.main()
