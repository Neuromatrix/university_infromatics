a, d = 1, 1
arr = [[rand(10:99) for i in 1:6] for j in 1:6]
println("Получившаяся матрица: ")
for i in arr
    println(i)
end
println("\nПолучившийся равнобедренный треугольник из элементов массива: ")
print(" " ^ 7)
for i in 1:6
    for j in 1:6
        global arr, a, d
        print(arr[i][j], " ")
        a -= 1
        if a == 0
            d += 1
            a = d
            print("\n"*" " ^ div(17 - a * 2, 2))
        end
    end
end