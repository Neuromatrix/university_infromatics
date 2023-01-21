a_n_1= 12
a_n_2 = 10

n = 2
while a_n_2 <= 100
    a_n_func = a_n_2 + a_n_1 - 2
    global a_n_1 = a_n_2
    global a_n_2 = a_n_func
    global n += 1
end

println(a_n_1, " ", n - 1)
