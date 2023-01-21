#Lab. №2 Part 1 
#Вариант 2
function max(nums)
    ind = 1
    saveind = 1
    max = nums[1]
    for i in nums
        if i > max
            max = i
            saveind = ind
        end
        ind += 1
    end
    return max, saveind
end
function min(nums)
    ind = 1
    saveind = 1
    min = nums[1]
    for i in nums
        if i < min
            min = i
            saveind = ind
        end
        ind += 1
    end
    return min, saveind
end
print("Введите подряд через пробел 20 чисел: ")
nums = map((x)->parse(Float64,x),split(readline()))
println("Ваш массив выглядит так: ", nums)
println("Номер наибольшего числа в массиве = ", max(nums)[2])
println("Наибольшее число в массиве = ", max(nums)[1])
println("Номер наименьшего числа в массиве = ", min(nums)[2])
println("Наименьшее число в массиве = ", min(nums)[1])