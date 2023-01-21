d = readline()
arr = split(d[1:end-1], ", ")
result = []
for i in arr
    if i[1] in "aeiouy" && i[end] in "aeiouy"
        push!(result, i)
    end
end
if length(result) != 0
    println("Количество слов, которые начинаются и заканчиваются на гласную букву: ", length(result))
    for i in 1:length(result)
        if i != length(result)
            print(result[i], ", ")
        else
            print(result[i], ".")
        end
    end
else
    println("Таких слов нет!")
end