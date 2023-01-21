function main()
    data_f = map(x -> parse(Int, x), split(readline()))
    data_g = filter(x -> x % 2 == 0, data_f)
    data_f = map(x -> string(x), data_f)
    data_g = map(x -> string(x), data_g)
    write_to("F.txt", data_f)
    write_to("G.txt", reverse(data_g))
end

function write_to(file_name, data)
    open(file_name, "w") do file
        for elem in data
            write(file, elem * "\n") 
        end
    end
end

main()