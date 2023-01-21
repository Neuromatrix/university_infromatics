println("Введите непустую последовательность слов из строчных латинских букв (количество слов больше 3): между соседними словами — запятая, за последним словом — точка: ")
a = split(lowercase(readline()), ",")
result = 0
for i in a
    k = 0
    for j in i
        global result
        if j in "aeiouy"
            k += 1
        end
        if k > 3
            result += 1
            break
        end
    end
end
println("Количество слов, в которыx больше 3 гласных буквы: ", result)