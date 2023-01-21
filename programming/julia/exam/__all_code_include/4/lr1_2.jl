#lr1_2
print("Эта программа считает сумму первых k членов последовательности Фибоначчи.
Введите k: ")
k = parse(Int64,readline())
if k < 0
    println("Ошибка, число k не должно быть отрицательным.")
end
n0 = 1
n1 = 1
sum = n0
if k >= 1
    sum += n1
end
for i in 2:k
    global n = n0 + n1
    global n0 = n1
    global n1 = n
    global sum = sum + n
end
println("Сумма равна ", sum)