module incl
export input,replace_letters
function input()
    return readline()
end
function replace_letters(str)
    n = length(str)
    res = ""
    for i in 1:n
        if (string(str[i])>="A") & (string(str[i])<="Z")
            res = res*lowercase(string(str[i]))
        end
        if (string(str[i])>="a") & (string(str[i])<="z")
            res = res*uppercase(string(str[i]))
        end

    end
    return res
end

end
