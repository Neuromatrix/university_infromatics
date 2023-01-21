print("Введите координаты точек x и y: ")
x, y = [parse(Float32, x) for x in split(readline())]
if -1 <= x <= 0 && y >= 0 && (-1 - x) ^ 2 + (0 - y) ^ 2 <= 1
    println("Принадлежит")
else
    println("Не принадлежит")
end