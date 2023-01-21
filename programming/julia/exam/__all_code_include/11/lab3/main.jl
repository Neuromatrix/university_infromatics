module Main
include("input.jl")
include("calculator.jl")
function main()
    res = 0
    for _ in 1:3 
        res += Calculator.get_min(Input.get_matrix())
    end
    println("Сумма минмальных элементов матриц равняется $res")
end

main()
end