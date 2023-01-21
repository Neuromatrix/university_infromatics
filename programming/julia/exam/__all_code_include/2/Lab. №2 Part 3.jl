# Lab. №2 Part 3 
# #Вариант 2
function A(str)
    sum = 0
    for i in str
        if in(i[1], "QWERTYUIOPASDFGHJKLZXCVBNM")
            println(i)
            sum += 1
        end
    end
    println("Количество слов, начинающихся с заглавной буквы = ", sum)
end
println("Эта программа определяет количество слов в ряду, начинающихся с заглавной буквы.")
print("Введите ряд слов через запятую, после нажмите 'Enter': ")
words = readline()
words = replace(words, "." => "")
words = split(words, ", ")
A(words)