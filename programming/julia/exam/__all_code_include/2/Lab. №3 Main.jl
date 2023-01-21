#Lab. №3 Main
#Вариант 2
module MainModule

include("Lab. №3 Include.jl")
using.Include

function main()
    println("Введите чётное целое число больше 2, я покажу из суммы каких простых чисел оно состоит.")
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
Main.main()