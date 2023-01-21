println("Введите промежуток чисел:")
h = parse(Float32, readline())
m = parse(Float32, readline())
n=h%1
k = 0
println("----------------------")
println("Числа, входящие в промежуток:")
while (((n-1)^2)/n)<=m
        if ((n-1)^2/n)>=h && ((n-1)^2/n)<=m
        println((n-1)^2/n)
        global k+=1
        end
global n+=1
end
println("----------------------")
println("Общее кол-во:")
println(k)
