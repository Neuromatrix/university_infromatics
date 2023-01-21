
module Lol
    include("Labs3-1_m_symbols.jl")
    include("Labs3-1_m_output.jl")
    include("Labs3-1_m_input.jl")
    include("Labs3-1_m_count.jl")
    function main()
        str = Module_string_input.string_input()
        return Module_Resulting.Resulting(Symbols.GetSymbol(str,str[1]),Module_GetCount.GetCount(str,str[1]))
    end
    println(main())
end


# s = "abbcccc/"    
# s = "aaabbbbbbcccc/"
# s = "abbccccdddde/"
module Testing
    using Test
    include("Labs3-1_m_symbols.jl")
    include("Labs3-1_m_count.jl")
    @testset "Test" begin
        s = "abbcccc/"
        @test Module_GetCount.GetCount(s,s[1]) == [0,1,2,4]
        @test Symbols.GetSymbol(s,s[1]) == ['a','b','c']
    end
end














# println("Введите строку")
# s = readline()*"/"
# res = []
# startsymbol = s[1]
# indexes = [0]
# for i in enumerate(s)     
#     global startsymbol    
#     if startsymbol != i[2]
#         push!(indexes, i[1]-1 - sum(indexes))
#         push!(res,startsymbol*string(indexes[end]))
#         startsymbol = i[2]
#     end    
# end
# println(join(res," ") )