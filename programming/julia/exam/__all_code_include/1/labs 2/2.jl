arr = [rand(0:9, 7) for i in 1:7]
println("Исходный массив:")
for i in arr
    println(i)
end
for i in 1:7 
    for j in 1:7
        if i + j <= 8
            print(arr[i][j], " ")
        end
    end
    println()
end
for i in 7:-1:1 
    for j in 7:-1:1
        if i + j >= 8
            print(arr[i][j], " ")
        end
    end
    println()
end