println("Введите строку длиной не более 40 символов")
n = readline()
a = [split(n, ".")]
count_letters = 0
schetchik =0 
for i in 1:length(a)
    podstroka = a[i]
    while "A" in podstroka
        replace(podstroka, "A" => "", count=1)
        global count_letters+=1
    end
    if count_letters>= 3
    global schetchik+=1
    println("В ",i," подстроке более 3 символов A")
    end
    global count_letters = 0
end
println("Всего таких строк = ", schetchik)