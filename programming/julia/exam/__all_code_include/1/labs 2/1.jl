println("Введите значения измерений: ")
arr = [parse(Float64, x) for x in split(readline())]
println("Исходный массив: ")
println(arr)
println("Разность между максимальныйм и минимальным значением измерений: ", maximum(arr) - minimum(arr))