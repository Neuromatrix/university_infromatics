# Lab №1 Part 1
# 2 Вариант 
println("Привет, сейчас узнаем, лежит ли твоя точка в заданной области.
Введи координату х: ")
x = parse(Float16,readline())
println("Введи координату у: ")
y = parse(Float16,readline())
if (x*x + y*y) <= 1 && ((x+1)*(x+1) + y*y) <= 1
    println("Да")
else
    println("Нет");
end    