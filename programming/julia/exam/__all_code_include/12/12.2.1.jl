function filling(mas)
    for i in range(1, 60)
        push!(mas, i)
    end
    return mas
end

function new_mas_filling(mas)
    new_mas = Array{Int64, 1}(undef, 60)
    for i in range(1, 20)
        new_mas[1+(i-1)*3] = mas[i]
    end
    current = 21
    for i in range(1, 60)
        if i%3 != 1
            #global current
            new_mas[i] = mas[current]
            current = current + 1
        end
    end
    return new_mas
end

mas = filling(Array{Int64, 1}())
new_mas = new_mas_filling(mas)
print(new_mas)