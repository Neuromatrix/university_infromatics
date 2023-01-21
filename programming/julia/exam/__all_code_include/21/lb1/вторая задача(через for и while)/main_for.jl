function main()
    println("до какого числа сделать перебор?")
    c=parse(BigInt, readline())
    x1 = -9
    x2 = -9
    x3 = x1 +x2 + 12
    i = 3
    y=0
    for j in range(0, c)
        x1 = x2
        x2 = x3
        x3 = x1 + x2 + 12
        i+=1
        if x3 > 0
            println("номер числа:",i)
            println("само число:",x3)
            y+=1
            break
        end
    end
    if y == 0
        println("увеличьте область перебора")
end

main()