module Main
include("input.jl")
include("pal.jl")

using Test

function main()
    ans = (Pal.palindrom(Input.get_string()))
    println("Кол-во чисел-палиндромов: $ans")
end
main()

@test Pal.palindrom(["12321", "11", "567", "11111111", "098765", "3", "10033001"]) == 5

@test Pal.palindrom(["1", "2", "7", "9090", "88888887", "0101"]) == 3

@test Pal.palindrom(["226", "1310", "56565656", "111333", "0980765", "31130", "007"]) == 0

end
