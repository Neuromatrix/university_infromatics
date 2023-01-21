#task 1
println("Enter x")
x = parse(BigFloat,readline())
println("Enter y")
y = parse(BigFloat,readline())
if y>=x^2 && (x-1)^2+y^2<=1
    println("in area")
else
    println("out area")
end