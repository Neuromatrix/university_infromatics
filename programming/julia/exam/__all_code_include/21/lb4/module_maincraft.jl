module Qwerty

export readfile, writefile, reversefile, output

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

function reversefile(text)
    result = []
    for i in reverse(text)
        push!(result, split(i, "; ")[1])
    end
    return result
end

function output(name)
    open(name) do f
        for i in readlines(f)
            println(i)
        end
    end
end
end