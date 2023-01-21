println("Введите через запятую числа")
X = map(x -> parse(Int64,x),split(readline()))
function f(s)
    t = []
    for i in range(1,length(s)-1)
        if (s[i] > 0 && s[i+1] < 0) || (s[i] < 0 && s[i+1] > 0)
            push!(t,true)
        else
            push!(t,false)
        end
    end
    return t
end 

if all(f(X))
    println("«истина»")
else
    println("«ложь»")
end