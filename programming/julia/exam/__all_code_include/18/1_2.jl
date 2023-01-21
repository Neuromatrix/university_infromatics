a=readline()
global pros=1
for i in a
  global pros*=parse(Int64,i)
end
print(pros)
#_____________________________#
global b=parse(Int64,readline())
global pros=1
while b>0
    global b
    global pros*=b%10
    b=b÷10
end
print(pros)
