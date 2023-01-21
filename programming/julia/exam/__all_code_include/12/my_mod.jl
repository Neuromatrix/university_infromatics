module my_mod

include("Hel.jl")
using .Hel

function main()
    s = input()
    output_category(s)
    #print(find_category("s2"))
end

using Test
@testset "mod_test" begin
    @test find_category("1f-") == [2, 1, 3]
end

end