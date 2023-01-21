println("Введите массив данных прямоугольников, где:")
println("x1 и x2 - координаты левого верхнего угла прямоугольника")
println("x3 - длина горизонтальной стороны")
println("x4 - длина вертикальной стороны")

data = [parse(Int, x) for x in split(readline())]
if length(data) % 4 != 0
    println("Ошибка, неверно введены параметры прямоугольника")
end

println("Введите координаты точки:")
p = parse(Int, readline())
q = parse(Int, readline())
n = 1
number = 0
for i in 1:4:length(data)
    x = data[i]
    y = data[i + 1]
    hor = data[i + 2]
    gor = data[i + 3]
    if((p>=x) && (p<=x+hor) && (q<=y) && (q>=y-gor))
        global number = n
    end
    global n+=1
end
if number > 0 
    println("Ваша точка принадлежит ",number, "-му прямоугольнику")
else 
    println("Таких прямоугольников не нашлось")
end