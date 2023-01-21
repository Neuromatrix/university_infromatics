module Help

export output, remove_name, input

function output()
    open("F.txt") do f
        for i in readlines(f)
            println(i)
        end
    end
end

function remove_name(name)
    arr = []
    open("F.txt") do f
        for i in readlines(f)
            if !(name in split(i))
                push!(arr, i)
            end
        end
    end
    return arr
end

function input(arr)
    open("F.txt", "w") do f
        for i in arr
            write(f, i, "\n")
        end
    end
end

end