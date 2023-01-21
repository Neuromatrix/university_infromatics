a = rand(1:50, 30)
b = rand(1:50, 30)
max = 0
println("Первая последовательность: ", a)
println("Вторая последовательность: ", b)
for i in b
    if !(i in a)
        global max
        if i > max
            max = i
        end
    end
end
println("Максимальный элемент второй последовательности, который не входит в первую: ", max)