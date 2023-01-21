println("напечатайте строку")
a = readline()
d = a[1:end - 1]
arr = split(d)
m = ""
for i in arr
    global m
    if length(i) > length(m)
        m = i
    end
end
b=length(m)
c=replace(a, (" " * m) => "")
println("изначальная строка:",a)
println("самое длинное слово:", m)
println("длина самого длинного слова:", b)
println("изначальная строка без самого длинного слова:", c)