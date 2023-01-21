println("Введите координаты X,Y")
X,Y  = parse(Float64,readline()),parse(Float64,readline()) 
if ((-cos(X))<Y) & ((-abs(X) + pi/2)>Y) & (-pi/2<=X<=pi/2) println("Попадает")
else println("Не попадает")
end

