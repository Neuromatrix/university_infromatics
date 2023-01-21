#Вводим строку, в которой больше 3 слов, слова разделены запятой с пробелом, в конце точка.
text = readline()
println("Исходная строка: ")
println(text)
#Преобразуем строку в массив слов
text = split(text[1:end - 1], ", ")
#создаём массив, в который мы будем записывать нужные нам элементы
result = []
for i in 1:length(text)
    #записываем нужные нам элементы
    if i % 2 == 0 && length(text[i]) > 3
        push!(result, text[i])
    end
end
if length(result) == 0 #проверяем есть ли нужные нам слова
    println("Таких слов нету.")
else
    println("Получившаяся строка: ")
    for i in 1:length(result) #красиво выводим строку с нужными словами
        if i != length(result)
            print(result[i], ", ")
        else
            print(result[i], ".")
        end
    end
end
