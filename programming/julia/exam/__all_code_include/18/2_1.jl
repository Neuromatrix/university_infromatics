#создаём массив из 40 рандомных цифр
arr = rand(0:9, 40)
#выводим рандомный массив
#создём словарь из цифр массива и приравниваем их 0
dict = Dict(arr[i]=>0 for i in 1:40)
#считаем количество цифр и записываем их в словарь
for i in arr
    dict[i] += 1
end
#сортируем словарь так чтобы в ответе получить максимальная цифра с максимальных числом повторений
dict = sort(collect(dict), rev=true)
dict = sort(collect(dict), by=x->x[2], rev=true)
println("Исходный массив: ")
println(arr)
println("Максимальная цифра с макисимальным числом повторений: ", dict[1])
