#создаю матрицу из символов аски таблицы
arr = [[Char(192 + j * 10 + i) for i in 0:8] for j in 0:8]
println("Исходная матрица: ")
for i in arr
    println(i)
end
println("Гланая и побочная диагонаяль матрицы. Побочная диагональ расположена вертикальна, а главная не изменила своего положения:")
#проходим по этой матрицы
for i in 1:9
    for j in 1:9
        if i == j #выводим главную диагональ
            print(arr[i][j])
        elseif j == 5 #выводим побочную диагональ
            print(arr[i][10 - i])
        else #выводим пробела
            print(" ")
        end
    end
    #переносим строку
    println()
end
