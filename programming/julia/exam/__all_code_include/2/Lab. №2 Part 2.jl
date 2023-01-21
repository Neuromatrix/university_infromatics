# Lab. №2 Part 2 
# #Вариант 2
function outputOriginal(mat)
    println("Выведем его в оригинальном виде.")
    for i in 1:size(mat[1])[1]
        print("[")
        for j in 1:size(mat)[1]
            print(mat[j][i], ", ")
        end
        print("]\n")
    end
end
function outputFlip(mat)
    println("Выведем его в перевёрнутом виде, разделённом на 3 части.")
    for i in 1:4
        println(mat[i], "    ", mat[i + 4], "    ", mat[i + 8])
    end
end
println("Создаём массив 3х12 (3 строки, 12 столбцов).")
column = 12
matrix = []
for i in 1:column
    push!(matrix, rand(1:9, 3))
end
outputOriginal(matrix)
outputFlip(matrix)