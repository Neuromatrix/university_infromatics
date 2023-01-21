# Lab. №4 FunctionModule
# Вариант 2
module FunctionModule
export outputF, outputG
function createF()
    f = open("F.txt","w")
    mat = rand(1:100,10,10)
    i = 1
    while i <= 100
        c = 0
        while c < 10
            write(f, string(mat[i]))
            c += 1
            if c < 10
                write(f, " ")
            end
            i += 1
        end
        write(f, "\n")
    end
    close(f)
end
function readF()
    F = open("F.txt", "r")
    vec = readlines(F)
    arr = []
    for l in 1:size(vec)[1]
        str = split(vec[l], " ")
        for k in 1:size(str)[1]
            num = parse(Int64, str[k])
            append!(arr, num)
        end
    end
    close(F)
    return arr
end
function createG()
    g = open("G.txt","w")
    arr = readF()
    x = 0
    for s in 1:size(arr)[1]
        if arr[s] %2 == 1
            write(g, string(arr[s]), " ")
            x += 1
            if x == 10
                write(g, "\n")
                x = 0 
            end
        end
    end
    close(g)
end
function outputF()
    createF()
    F = open("F.txt")
    println("Ваш файл F:")
    while (!eof(F))
        println(readline(F))
    end
    close(F)
end
function outputG()
    createG()
    G = open("G.txt")
    println("Ваш файл G:")
    while (!eof(G))
        println(readline(G))
    end
    close(G)
end
end
