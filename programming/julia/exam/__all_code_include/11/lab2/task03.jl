function main()
    println("Введите строку.")
    data = split(readline())
    a = ['M', 'N', 'K']
    res = ""
    for i in data
        s = collect(i)
        if s[1] in a
            s[2] = 'E'
        end

        if s[end] == 'S'
            s[1] = 'Z'
        end

        res *= join(s) * " "
    end

    println(res)
end

main()
