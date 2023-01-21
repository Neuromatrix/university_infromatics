module Hel

export output_category, input, find_category

function output_category(s)
    alf = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM"
    cif = "1234567890"
    for i in range(1, length(s))
        char = s[i]
        if findfirst(char, alf) != nothing 
            println('"', char, '"', ' ', "category 1")
        elseif findfirst(char, cif) != nothing 
            println('"', char, '"', ' ', "category 2")
        else
            println('"', char, '"', ' ', "category 3")
        end
    end
end

function find_category(s)
    alf = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM"
    cif = "1234567890"
    mas = Array{Int64, 1}(undef, length(s))
    for i in range(1, length(s))
        char = s[i]
        if findfirst(char, alf) != nothing 
            mas[i] = 1
        elseif findfirst(char, cif) != nothing 
            mas[i] = 2
        else
            mas[i] = 3
        end
    end
    return mas
end

function input()
    s = readline()
    return s
end

end