module Input
function get_matrix()
    println("Введите элементы матрицы (элементы строк отделять через запятую, строки через знак |")
    matrix = []
    rows = split(readline(), "|")
    for elem in rows
        row = map(x -> parse(Int, x), split(elem, ","))
        push!(matrix, row)
    end
    return matrix
end
end