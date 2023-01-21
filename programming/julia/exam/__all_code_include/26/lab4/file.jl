module File
export input, write_file, read_file, rewrite

function input()
    println("Введите слова:")
    words = []
    while true
        s = readline()
        if s == "*"
           break     
        else
            push!(words, s)
        end
    end
    return words
end

function write_file(words)
    open("F.txt", "w") do f
        for i in words
            write(f, i, "\n")
        end
    end
end

function read_file()
    open("F.txt", "r") do f
        global text
        text = readlines(f)
    end    
    return text
end

function new_file()
    text = read_file()
    open("G.txt", "w") do f
        for i in text
            if i[1] == uppercase(i[1])
                write(f, i, "\n")
            end
        end
    end
end

end
