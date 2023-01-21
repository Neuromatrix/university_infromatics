function main()
    x1 = -9
    x2 = -9
    x3 = x1 + x2 + 12
    i = 3
    while x3 < 0
        x1 = x2
        x2 = x3
        x3 = x1+x2+12
        i+=1
    end
    println("номер числа:",i)
    println("само число:",x3)
end

main()