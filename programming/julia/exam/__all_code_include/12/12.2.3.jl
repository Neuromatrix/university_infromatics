
function cleaned(mas)
    for i in range(1, length(mas))
        if length(mas[i]) <= 3
            mas[i] = ""
        end
    end
    return mas
end

function create_new_str(mas, new_str)
    for i in range(1, length(mas))
        if mas[i] != "" 
            new_str = new_str * mas[i] * ' '
        end
    end
    new_str = SubString(new_str, 1, length(new_str)-1)
    if new_str[length(new_str)] != '.'
        new_str = new_str * '.'
    end
    return new_str
end

function main()
    println("Введите строку длиной не более 40 символов и в конце поставьте точку.")
    input_str = readline()
    new_str = ""
    if length(input_str) > 40
        print("Строка слишком длинная")
    elseif input_str[length(input_str)] != '.'
        print("Поставьте в конце точку.")
    else
        mas = split(input_str, ' ')
        mas = cleaned(mas)
        if length(mas) != 0
            new_str = create_new_str(mas, new_str)
    end
    return new_str
end

