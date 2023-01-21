module SamModule
#экспортируем нужные нам методы
export triangle, output

#площадь треугольника
function square(a, b, c)
    p = (a + b + c) / 2
    s = sqrt(p*(p - a)*(p - b)*(p - c))
    return s
end
#проверка того что из отрезка может получится треугольник и запись площади в массив результатов
function triangle(arr)
    result = []
    for (a, b , c) in arr
        if a + b > c && a + c > b && b + c > a
            push!(result, [a, b, c, square(a, b, c)])
        end
    end
    return result
end
#вывод резуль
function output(k)
    for i in k
        println("Площадь треугольника, состоящего из тройки отрезков $(i[1:3]), равна $(i[4])")
    end
end
end
