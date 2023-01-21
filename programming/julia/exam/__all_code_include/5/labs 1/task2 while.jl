print("Введите k: ")
k = parse(Int64, readline())
f0 = 1
f = 2
t = 0
while f <= k
    global t = f
    global f = t + f0
    global f0 = t
end
println("Первое число фибоначчи больше k: ", f)