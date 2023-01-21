alphabet = ["a","b","c","d","e","g","f","h","i","j","k"]
alphabetMatrix = [alphabet]

# формирует alphabetMatrix добавляет новые элементы, 
# так что каждый следущий ряд имеет сдвиг влево
for i in range(0,length(alphabet)-2)
    s = String[]
    for x in range(i,0,i+1)
        push!(s,alphabet[end-Int64(x)])
    end

    for x in range(1,length(alphabet)-i-1)
        push!(s,alphabet[x])
    end
    push!(alphabetMatrix,s)
end

# MultiplicationString - возвращает от форматированный элемент массива для дальнейшего вывода
# 1 аргумент - отсупы
# 2 аргумент - буква, которую хотим поставить в ряд
 
function MultiplicationString(st,n)
    global s = ""
    for i in range(1,n)
        global s
        s = s * st
    end
    return s
end

# формат вывода, который требуют по условию задачи
for i in range(1,length(alphabetMatrix))
    println(MultiplicationString(" ",5*(11-(indexin(["d"],alphabetMatrix[i]))[1])),alphabetMatrix[i])
end