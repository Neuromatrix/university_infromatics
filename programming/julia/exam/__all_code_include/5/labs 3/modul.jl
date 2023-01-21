module replacing_elements_in_the_matrix

export  output_matrix, create_matrix, replacing_elements

function output_matrix(arr)
    println("Получившаяся матрица: ")
    for i in arr
        println(i)
    end
    println()
end

function create_matrix(n)
    return [[rand(10:99) for i in 1:n] for j in 1:n]
end

function replacing_elements(arr, k, l, n)
    for i in 1:n
        arr[i][k], arr[i][l] = arr[i][l], arr[i][k]
    end
    return arr
end
end