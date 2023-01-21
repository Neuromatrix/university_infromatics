module rabota

export input, result

function input()
    return [[parse(Int8, i) for i in split(readline())] for j in 1:4]
end

function square_quadrilateral(x1, y1, x2, y2, x3, y3, x4, y4)
    return abs((x1 - x2)*(y1 + y2) + (x2 - x3)*(y2 + y3) + (x3 - x4)*(y3 + y4) + (x4 - x1)*(y4 + y1)) / 2
end

function square_triangle(x1, y1, x2, y2, x, y)
    return abs((x2 - x1)*(y - y1) - (x - x1)*(y2 - y1)) / 2 
end

function result(arr, x, y)
    S = square_quadrilateral(arr[1][1], arr[1][2], arr[2][1], arr[2][2], arr[3][1], arr[3][2], arr[4][1], arr[4][2])
    S1 = square_triangle(arr[1][1], arr[1][2], arr[2][1], arr[2][2], x, y)
    S2 = square_triangle(arr[2][1], arr[2][2], arr[3][1], arr[3][2], x, y)
    S3 = square_triangle(arr[3][1], arr[3][2], arr[4][1], arr[4][2], x ,y)
    S4 = square_triangle(arr[1][1], arr[1][2], arr[4][1], arr[4][2], x, y)
    return S == S1 + S2 + S3 + S4
end
end