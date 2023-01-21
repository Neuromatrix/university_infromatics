println("Enter the number")
k = parse(Int64,readline())
function funk(a)
    return exp(sqrt(2a-1))
end
x = 1
while funk(x)<=k
    global x+=1
end
print(x,"|",funk(x))