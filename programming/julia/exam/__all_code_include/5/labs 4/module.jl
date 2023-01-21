module Work_with_file

export create_F, write_file, read_file, rewrite

function create_F()
    open("F.txt", "w") do f
        for i in rand(1:100, rand(5:10))
            write(f, "$i", "\n")
        end
    end
end

function write_file(arr, name)
    open(name, "w") do f
        for i in arr
            write(f, i, "\n")
        end
    end
end

function read_file(name)
    open(name, "r") do file
        global text
        text = readlines(file)
    end    
    return text
end

function rewrite(text)
    arr = []
    for i in 1:length(text)
        if i % 2 == 0
            push!(arr, text[i])
        end
    end
    return arr
end

end