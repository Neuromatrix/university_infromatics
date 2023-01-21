function main()
println("введите 10 координат точек")
a=parse(BigFloat, readline())
b=parse(BigFloat, readline())
c=parse(BigFloat, readline())
d=parse(BigFloat, readline())
e=parse(BigFloat, readline())
f=parse(BigFloat, readline())
g=parse(BigFloat, readline())
h=parse(BigFloat, readline())
i=parse(BigFloat, readline())
j=parse(BigFloat, readline())
min=99999
Array_T=[a,b,c,d,e,f,g,h,i,j]
Array_N=[a,b,c,d,e,f,g,h,i,j]
Array_A=[]
Array_B=[]
for x in range(1,10)
    for y in range(1,10)
    if x-y != 0
        if (max((Array_T[x]-Array_N[y]),(Array_N[y]-Array_T[x]))<min)
            min=max((Array_T[x]-Array_N[y]),(Array_N[y]-Array_T[x]))
            Array_A=[Array_T[x],Array_N[y]]
            Array_B=[x,y]
        end
    end
    end
end
println("Координаты:", Array_A)
println("Номера точек:", Array_B)
end

main()