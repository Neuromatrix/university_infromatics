#Lab. №1 Part 2 
#Вариант 2
print("Привет, эта программа определяет количество нечётных цифр в твоём числе!
Напиши своё число: ")
num = parse(Int16,readline())
d = 0 
while num >= 1          
    z = num % 2
    if z == 1
        global d += 1
    end
    global num = div(num,10)
end
println(d)