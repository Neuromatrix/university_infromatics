function main()
    println("Введите 30 чисел подряд через пробел.")
    data = map(x -> parse(Int, x), split(readline()))
    left = 1
    right = 30
    y = data[rand(1:length(data))]
    found = -1
    while found != y
        idx = div(left + right, 2)
        found = data[idx]
        if found == y
            println(idx)
            println(y)
            print(data)
        end
        if found < y
            left = idx
        end
        if found > y
            right = idx
        end
    end
end

main()
