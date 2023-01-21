module Work

export input_size, input_matrix, work

function input_size()
    return [parse(Int8, x) for x in split(readline())]
end

function input_matrix(n)
    return [[parse(Int8, i) for i in split(readline())] for j in 1:n]
end

function work(n, m, arr)
    d = sum(sum(arr)) / (n * m)
    result = []
    for i in 1:n
        if maximum(last, arr[i]) < d
            push!(result, "На строке $i сумма элементов равна $(sum(arr[i]))") 
        end
        println()
    end 
    return result
end
end