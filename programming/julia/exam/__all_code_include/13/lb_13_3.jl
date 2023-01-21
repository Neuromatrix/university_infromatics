module lb_13_3

include("incl.jl")
using .incl
function main()
    str = readline()
    println(replace_letters(str))
end

using Test
@testset "mod_test" begin
    @test replace_letters("AbBa") == "aBbA"
end
end
