print("Введите x:")
x = parse(Float32, readline())
print("Введите y:")
y = parse(Float32, readline())

if (x >= y) && (x^2 + y^2) <= 1
    println("Точка входит в область")
else
    println("Точка не входит в область")
end
