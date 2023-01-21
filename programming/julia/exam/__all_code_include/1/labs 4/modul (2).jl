module MyFunction

export readfile, writefile, create_F, otbor, output

function readfile(name)
    open(name) do f
        text = readlines(f)
        return text
    end
end

function writefile(name, text)
    open(name, "w") do f
        for i in text
            write(f, i, "\n")
        end
    end
end
function create_F()
    open("F.txt", "w") do f
        for i in rand(1:100, 100)
            write(f, "$i", "\n")
        end
    end
end

function otbor(text)
    result = []
    for i in text
        if parse(Int16, i) % 2 == 0
            push!(result, i)
        end
    end
    return result
end

function output(name)
    return println(readlines(name))  
end
end