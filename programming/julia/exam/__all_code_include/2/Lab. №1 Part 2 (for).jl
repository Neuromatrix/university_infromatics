#Lab. №1 Part 2 (for)
#Вариант 2
print("Привет, эта программа определяет количество нечётных цифр в твоём числе!
Напиши своё число: ")
num = parse(Int128,readline())
d = 0
for i in range(1,length(string(num)))
    z = num % 2
    if z == 1
        global d += 1
    end

    global num = div(num,10)
end
println(d)