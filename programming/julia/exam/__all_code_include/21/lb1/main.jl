println("Последовательно введите координаты точки(x,y)")
x=parse(BigFloat, readline())
y=parse(BigFloat, readline())
if ((y>=x) && (y>=0) && (x^2+y^2<=1) && (x<=0))
        println("Точка принадлежит заштрихованной области")
else
    println("Точка не принадлежит заштрихованной области")
end