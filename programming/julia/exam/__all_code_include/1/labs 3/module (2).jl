module MyFunction

export input_treangle,input_point, result

function input_treangle()
    println("Введите координаты вершин треугольника:")
    return [[parse(Int16, i) for i in split(readline())] for j in 1:3]
end

function input_point(m)
    println("Введите точки на плоскости: ")
    return [[parse(Int16, i) for i in split(readline())] for j in 1:m]
end

function square_triangle(x1, y1, x2, y2, x, y)
    return abs((x2 - x1)*(y - y1) - (x - x1)*(y2 - y1)) / 2 
end

function result(arr, point)
    result = 0
    for (x, y) in point
        S = square_triangle(arr[1][1], arr[1][2], arr[2][1], arr[2][2], arr[3][1], arr[3][2])
        S1 = square_triangle(arr[1][1], arr[1][2], arr[2][1], arr[2][2], x, y)
        S2 = square_triangle(arr[2][1], arr[2][2], arr[3][1], arr[3][2], x, y)
        S3 = square_triangle(arr[3][1], arr[3][2], arr[1][1], arr[1][2], x ,y)
        if S == S1 + S2 + S3
            result += 1
        end
    end
    return result
end
end