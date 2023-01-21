x=parse(Float64,readline())
y=parse(Float64,readline())
if (y<=0.5*x+1 || y<=0.5*x) && x<=2 && x>=-2 && y>=0
  print("Принадлежит")
else
  print("нет")
end
