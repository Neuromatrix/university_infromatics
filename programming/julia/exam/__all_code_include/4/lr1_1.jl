#lr1_1
println("Я покажу, принадлежит ли твоя точка закрашенной области.
Введи координату х: ")
x = parse(Float16,readline())
println("Введи координату у: ")
y = parse(Float16,readline())
if (y*y) <= -x && (y-x) <= 1 && (y+x) >= -1
    println("Да")
else
    println("Нет")
end
